import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/dto/pokemon_data.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/domain/model/pokemon_info.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

class PokemonInfoRepository {
  final PokedexApiClient _apiClient;

  PokemonInfoRepository(this._apiClient);

  Future<PokemonInfo> getById(int id) async {
    final pokemonData = await _apiClient.getPokemonDataById(id);
    return PokemonInfo(
      pokedexId: pokemonData.id,
      name: pokemonData.name,
      speciesName: pokemonData.species?.name ?? pokemonData.name,
      imageUrl: _artworkUrl(pokemonData),
      shinyImageUrl: _shinyArtworkUrl(pokemonData),
      weight: pokemonData.weight,
      height: pokemonData.height,
      types: pokemonData.types
          .map((e) => PokemonType.valueOf(e.type.name))
          .toList(),
      abilities: pokemonData.abilities.map((e) => e.ability.name).toList(),
      baseStats: pokemonData.stats
          .map((stat) =>
              PokemonBaseStatInfo(name: stat.stat.name, value: stat.baseStat))
          .toList(),
      moves: pokemonData.moves
          .expand((move) => move.versionGroupDetails.map(
                (detail) => PokemonMoveInfo(
                  name: move.move.name,
                  learnMethod: detail.moveLearnMethod.name,
                  levelLearnedAt: detail.levelLearnedAt,
                  versionGroup: detail.versionGroup.name,
                ),
              ))
          .toList(),
    );
  }

  Future<PokemonFormInfo> getFormByName(String name) async {
    final data = await _apiClient.getPokemonDataByFormName(name);
    return PokemonFormInfo(
      name: data.name,
      imageUrl: _artworkUrl(data),
      shinyImageUrl: _shinyArtworkUrl(data),
      types: data.types
          .map((entry) => PokemonType.valueOf(entry.type.name))
          .toList(),
      height: data.height / 10,
      weight: data.weight / 10,
      abilities: data.abilities.map((entry) => entry.ability.name).toList(),
      baseStats: data.stats
          .map((stat) =>
              PokemonBaseStatInfo(name: stat.stat.name, value: stat.baseStat))
          .toList(),
    );
  }

  String _artworkUrl(PokemonData data) =>
      data.sprites.other?.officialArtwork?.frontDefault ??
      data.sprites.other?.home?.frontDefault ??
      data.sprites.frontDefault;

  String _shinyArtworkUrl(PokemonData data) =>
      data.sprites.other?.officialArtwork?.frontShiny ??
      data.sprites.other?.home?.frontShiny ??
      data.sprites.frontShiny ??
      _artworkUrl(data);
}

final pokemonInfoRepositoryProvider = Provider<PokemonInfoRepository>((ref) {
  final apiClient = ref.watch(pokedexApiClientProvider);
  return PokemonInfoRepository(apiClient);
});

// For cached data
final pokemonInfoProvider =
    FutureProvider.family<PokemonInfo, int>((ref, id) async {
  final repository = ref.watch(pokemonInfoRepositoryProvider);
  return repository.getById(id);
});

final pokemonFormInfoProvider =
    FutureProvider.family<PokemonFormInfo, String>((ref, name) {
  return ref.watch(pokemonInfoRepositoryProvider).getFormByName(name);
});
