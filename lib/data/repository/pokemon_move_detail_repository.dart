import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/domain/model/pokemon_move_detail_info.dart';

class PokemonMoveDetailRepository {
  PokemonMoveDetailRepository(this._apiClient);

  final PokedexApiClient _apiClient;

  Future<PokemonMoveDetailInfo> getByName(String name) async {
    final data = await _apiClient.getPokemonMoveDetail(name);
    return PokemonMoveDetailInfo(
      name: data.name,
      type: data.type,
      category: data.damageClass,
      power: data.power,
      accuracy: data.accuracy,
      pp: data.pp,
      description: data.description,
      shortEffect: data.shortEffect,
      effect: data.effect,
    );
  }
}

final pokemonMoveDetailRepositoryProvider =
    Provider<PokemonMoveDetailRepository>((ref) {
  return PokemonMoveDetailRepository(ref.watch(pokedexApiClientProvider));
});

final pokemonMoveDetailInfoProvider =
    FutureProvider.family<PokemonMoveDetailInfo, String>((ref, name) {
  return ref.watch(pokemonMoveDetailRepositoryProvider).getByName(name);
});
