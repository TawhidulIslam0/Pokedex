import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/data/dto/pokemon_type_detail_data.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/data/network/pokedex_api_service.dart';
import 'package:pokedex/data/repository/pokemon_weakness_types_info_repository.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

void main() {
  test('combines defensive multipliers and keeps offensive types separate',
      () async {
    final repository = PokemonWeaknessTypesInfoRepository(
      _FakePokedexApiClient({
        'fire': _typeDetail(
          doubleDamageFrom: ['water', 'ground', 'rock'],
          halfDamageFrom: ['fire', 'grass', 'ice', 'bug', 'steel', 'fairy'],
          doubleDamageTo: ['grass', 'ice', 'bug', 'steel'],
        ),
        'flying': _typeDetail(
          doubleDamageFrom: ['electric', 'ice', 'rock'],
          halfDamageFrom: ['grass', 'fighting', 'bug'],
          noDamageFrom: ['ground'],
          doubleDamageTo: ['grass', 'fighting', 'bug'],
        ),
        'grass': _typeDetail(
          doubleDamageFrom: [
            'fire',
            'ice',
            'poison',
            'flying',
            'bug',
          ],
          halfDamageFrom: [
            'water',
            'electric',
            'grass',
            'ground',
          ],
          doubleDamageTo: ['water', 'ground', 'rock'],
        ),
      }),
    );

    final matchups = await repository.getByTypes([
      PokemonType.fire,
      PokemonType.flying,
    ]);

    expect(matchups.effectiveness[PokemonType.rock], 4);
    expect(matchups.effectiveness[PokemonType.water], 2);
    expect(matchups.effectiveness[PokemonType.grass], 0.25);
    expect(matchups.effectiveness[PokemonType.ground], 0);
    expect(matchups.weaknesses, contains(PokemonType.rock));
    expect(matchups.strengths, contains(PokemonType.fighting));
    expect(matchups.effectiveness.length, PokemonType.values.length);

    final fireAndGrassMatchups = await repository.getByTypes([
      PokemonType.fire,
      PokemonType.grass,
    ]);
    expect(fireAndGrassMatchups.strengths, contains(PokemonType.water));
  });
}

class _FakePokedexApiClient extends PokedexApiClient {
  _FakePokedexApiClient(this.typeDetails) : super(PokedexApiService());

  final Map<String, PokemonTypeDetailData> typeDetails;

  @override
  Future<PokemonTypeDetailData> getPokemonTypeDetail(String type) async {
    return typeDetails[type]!;
  }
}

PokemonTypeDetailData _typeDetail({
  List<String> doubleDamageFrom = const [],
  List<String> halfDamageFrom = const [],
  List<String> noDamageFrom = const [],
  List<String> doubleDamageTo = const [],
}) {
  List<Map<String, String>> relation(List<String> types) {
    return types
        .map((type) => {'name': type, 'url': 'https://example.com/type/$type'})
        .toList();
  }

  return PokemonTypeDetailData.fromJson({
    'damage_relations': {
      'double_damage_from': relation(doubleDamageFrom),
      'half_damage_from': relation(halfDamageFrom),
      'no_damage_from': relation(noDamageFrom),
      'double_damage_to': relation(doubleDamageTo),
    },
  });
}
