import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/data/dto/pokemon_species_data.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/data/network/pokedex_api_service.dart';
import 'package:pokedex/data/repository/pokemon_forms_repository.dart';

void main() {
  test('lists species varieties and Mega forms without duplicating the base',
      () async {
    final repository = PokemonFormsRepository(
      _FakePokedexApiClient(),
    );

    final forms =
        await repository.getAlternateForms(6, 'charizard', 'charizard');

    expect(
      forms.map((form) => form.name),
      containsAll(['charizard-gmax', 'charizard-mega-x', 'charizard-mega-y']),
    );
    expect(forms.any((form) => form.name == 'charizard'), isFalse);
    expect(
      forms.where((form) => form.isMega).map((form) => form.name),
      containsAll(['charizard-mega-x', 'charizard-mega-y']),
    );
    expect(
      forms.singleWhere((form) => form.name == 'charizard-gmax').isMega,
      isFalse,
    );
  });
}

class _FakePokedexApiClient extends PokedexApiClient {
  _FakePokedexApiClient() : super(PokedexApiService());

  @override
  Future<PokemonSpeciesData> getPokemonSpeciesDataById(int id) async {
    return PokemonSpeciesData.fromJson({
      'gender_rate': 1,
      'flavor_text_entries': [],
      'genera': [],
      'evolution_chain': {'url': 'https://example.com/evolution-chain/1'},
      'varieties': [
        {
          'is_default': true,
          'pokemon': {
            'name': 'charizard',
            'url': 'https://example.com/pokemon/charizard',
          },
        },
        {
          'is_default': false,
          'pokemon': {
            'name': 'charizard-gmax',
            'url': 'https://example.com/pokemon/charizard-gmax',
          },
        },
      ],
    });
  }

  @override
  Future<List<String>> getPokemonNames() async {
    return [
      'charizard',
      'charizard-mega-x',
      'charizard-mega-y',
      'venusaur-mega',
    ];
  }
}
