import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/domain/model/pokemon_info.dart';

class PokemonFormsRepository {
  PokemonFormsRepository(this._apiClient);

  final PokedexApiClient _apiClient;

  Future<List<PokemonFormOption>> getAlternateForms(
    int pokedexId,
    String pokemonName,
    String speciesName,
  ) async {
    final speciesFuture = _apiClient.getPokemonSpeciesDataById(pokedexId);
    final pokemonNamesFuture = _apiClient.getPokemonNames();
    final species = await speciesFuture;
    final pokemonNames = await pokemonNamesFuture;
    final names = <String, bool>{
      for (final variety in species.varieties)
        if (variety.pokemon.name != pokemonName) variety.pokemon.name: false,
      for (final name in pokemonNames)
        if (name.startsWith('$speciesName-mega') ||
            name.startsWith('$speciesName-primal') ||
            name.startsWith('$speciesName-ultra'))
          name: name.startsWith('$speciesName-mega'),
    };
    final forms = names.entries
        .map((entry) => PokemonFormOption(name: entry.key, isMega: entry.value))
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));

    return forms;
  }
}

final pokemonFormsRepositoryProvider = Provider<PokemonFormsRepository>((ref) {
  return PokemonFormsRepository(ref.watch(pokedexApiClientProvider));
});

final pokemonAlternateFormsProvider =
    FutureProvider.family<List<PokemonFormOption>, (int, String, String)>(
        (ref, pokemon) {
  return ref
      .watch(pokemonFormsRepositoryProvider)
      .getAlternateForms(pokemon.$1, pokemon.$2, pokemon.$3);
});
