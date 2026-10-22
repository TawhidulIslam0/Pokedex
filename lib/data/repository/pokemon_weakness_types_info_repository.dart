import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/dto/pokemon_type_detail_data.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';
import 'package:pokedex/domain/model/pokemon_weakness_types_info.dart';

class PokemonWeaknessTypesInfoRepository {
  final PokedexApiClient _apiClient;

  PokemonWeaknessTypesInfoRepository(this._apiClient);

  Future<PokemonWeaknessTypesInfo> getByTypes(List<PokemonType> types) async {
    final data = await Future.wait(
      types.map((type) => _apiClient.getPokemonTypeDetail(type.name)),
    );
    final effectiveness = {
      for (final attackType in PokemonType.values)
        attackType: _defensiveMultiplier(data, attackType),
    };

    return PokemonWeaknessTypesInfo(
      weaknesses: effectiveness.entries
          .where((entry) => entry.value > 1)
          .map((entry) => entry.key)
          .toList(),
      strengths: PokemonType.values
          .where((defendingType) => data.any((attackingType) => attackingType
              .demageRelations.doubleDamageTo
              .any((entry) => entry.name == defendingType.name)))
          .toList(),
      effectiveness: effectiveness,
    );
  }

  double _defensiveMultiplier(
    List<PokemonTypeDetailData> defendingTypes,
    PokemonType attackType,
  ) {
    return defendingTypes.fold(1, (multiplier, defendingType) {
      final relations = defendingType.demageRelations;

      if (relations.noDamageFrom
          .any((entry) => entry.name == attackType.name)) {
        return 0;
      }
      if (relations.doubleDamageFrom
          .any((entry) => entry.name == attackType.name)) {
        return multiplier * 2;
      }
      if (relations.halfDamageFrom
          .any((entry) => entry.name == attackType.name)) {
        return multiplier / 2;
      }
      return multiplier;
    });
  }
}

// provider
final pokemonWeaknessTypesInfoRepositoryProvider = Provider((ref) {
  return PokemonWeaknessTypesInfoRepository(
    ref.watch(pokedexApiClientProvider),
  );
});

final pokemonWeaknessTypesInfoProvider =
    FutureProvider.family<PokemonWeaknessTypesInfo, String>((ref, typeNames) {
  final repository = ref.watch(pokemonWeaknessTypesInfoRepositoryProvider);
  final types = typeNames.split(',').map(PokemonType.valueOf).toList();
  return repository.getByTypes(types);
});
