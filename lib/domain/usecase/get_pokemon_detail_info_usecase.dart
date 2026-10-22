import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/pokemon_evolution_info_repository.dart';
import 'package:pokedex/data/repository/pokemon_info_repository.dart';
import 'package:pokedex/data/repository/pokemon_species_info_repository.dart';
import 'package:pokedex/data/repository/pokemon_weakness_types_info_repository.dart';
import 'package:pokedex/domain/model/pokemon_detail_info.dart';
import 'package:pokedex/domain/model/pokemon_info.dart';

import 'package:pokedex/util/extentions.dart';

final pokemonDetailInfoUseCaseProvider =
    FutureProvider.autoDispose.family<PokemonDetailInfo, int>((ref, id) async {
  final pokemonInfo = await ref.watch(pokemonInfoProvider(id).future);
  final pokemonSpeciesInfo =
      await ref.watch(pokemonSpeciesInfoProvider(id).future);
  final pokemonTypeMatchups = await ref.watch(pokemonWeaknessTypesInfoProvider(
          pokemonInfo.types.map((type) => type.name).join(','))
      .future);
  final pokemonEvolutionInfo = await ref.watch(
      pokemonEvolutionInfoProvider(pokemonSpeciesInfo.evolutionChainId).future);

  return PokemonDetailInfo(
    pokedexId: pokemonInfo.pokedexId,
    name: pokemonInfo.name,
    speciesName: pokemonInfo.speciesName,
    imageUrl: pokemonInfo.imageUrl,
    shinyImageUrl: pokemonInfo.shinyImageUrl,
    types: pokemonInfo.types,
    desc: pokemonSpeciesInfo.desc,
    category: pokemonSpeciesInfo.category.split(" ")[0],
    height: (pokemonInfo.height) / 10,
    weight: (pokemonInfo.weight) / 10,
    abilities: pokemonInfo.abilities
        .map((e) => e.capitalizeFirst().replaceAll("-", " "))
        .toList(),
    baseStats: pokemonInfo.baseStats,
    levelUpMoves: _latestMoves(pokemonInfo.moves, 'level-up'),
    machineMoves: _latestMoves(pokemonInfo.moves, 'machine'),
    eggMoves: _latestMoves(pokemonInfo.moves, 'egg'),
    genderRate: pokemonSpeciesInfo.genderRate,
    weaknesses: pokemonTypeMatchups.weaknesses,
    strengths: pokemonTypeMatchups.strengths,
    evolutionChainInfo: pokemonEvolutionInfo,
  );
});

const _versionGroupPriority = [
  'scarlet-violet',
  'legends-arceus',
  'brilliant-diamond-shining-pearl',
  'sword-shield',
  'ultra-sun-ultra-moon',
  'sun-moon',
  'omega-ruby-alpha-sapphire',
  'x-y',
  'black-2-white-2',
  'black-white',
  'heartgold-soulsilver',
  'platinum',
  'diamond-pearl',
  'emerald',
  'firered-leafgreen',
  'ruby-sapphire',
  'crystal',
  'gold-silver',
  'yellow',
  'red-blue',
];

List<PokemonMoveInfo> _latestMoves(
  List<PokemonMoveInfo> moves,
  String learnMethod,
) {
  final available =
      moves.where((move) => move.learnMethod == learnMethod).toList();
  if (available.isEmpty) {
    return const [];
  }

  available.sort((a, b) {
    final aPriority = _versionGroupPriority.indexOf(a.versionGroup);
    final bPriority = _versionGroupPriority.indexOf(b.versionGroup);
    final normalizedAPriority =
        aPriority < 0 ? _versionGroupPriority.length : aPriority;
    final normalizedBPriority =
        bPriority < 0 ? _versionGroupPriority.length : bPriority;
    return normalizedAPriority.compareTo(normalizedBPriority);
  });
  final latestVersion = available.first.versionGroup;
  final uniqueMoves = <String, PokemonMoveInfo>{};

  for (final move
      in available.where((move) => move.versionGroup == latestVersion)) {
    final previous = uniqueMoves[move.name];
    if (previous == null ||
        (learnMethod == 'level-up' &&
            move.levelLearnedAt < previous.levelLearnedAt)) {
      uniqueMoves[move.name] = move;
    }
  }

  final result = uniqueMoves.values.toList();
  result.sort((a, b) {
    if (learnMethod == 'level-up') {
      final levelOrder = a.levelLearnedAt.compareTo(b.levelLearnedAt);
      if (levelOrder != 0) {
        return levelOrder;
      }
    }
    return a.name.compareTo(b.name);
  });
  return result;
}
