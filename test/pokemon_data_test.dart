import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/data/dto/pokemon_data.dart';
import 'package:pokedex/data/dto/pokemon_move_detail_data.dart';
import 'package:pokedex/data/dto/pokemon_species_data.dart';
import 'package:pokedex/data/dto/pokemon_type_detail_data.dart';

void main() {
  test('parses Pokémon without a Showdown animation sprite', () {
    final pokemon = PokemonData.fromJson({
      'id': 1025,
      'name': 'pecharunt',
      'height': 3,
      'weight': 3,
      'types': [],
      'abilities': [],
      'sprites': {
        'front_default': 'https://example.com/pecharunt.png',
        'other': {
          'showdown': {'front_default': null},
        },
      },
    });

    expect(pokemon.sprites.other?.showdown?.frontDefault, isNull);
  });

  test('parses Pokémon without optional sprite metadata', () {
    final pokemon = PokemonData.fromJson({
      'id': 1025,
      'name': 'pecharunt',
      'height': 3,
      'weight': 3,
      'types': [],
      'abilities': [],
      'sprites': {
        'front_default': 'https://example.com/pecharunt.png',
        'other': null,
      },
    });

    expect(pokemon.sprites.other, isNull);
  });

  test('parses base stats and versioned move learn methods', () {
    final pokemon = PokemonData.fromJson({
      'id': 906,
      'name': 'sprigatito',
      'height': 4,
      'weight': 41,
      'types': [],
      'abilities': [],
      'sprites': {'front_default': 'https://example.com/sprigatito.png'},
      'stats': [
        {
          'base_stat': 40,
          'stat': {'name': 'hp', 'url': 'https://example.com/stat/1'},
        },
      ],
      'moves': [
        {
          'move': {'name': 'leafage', 'url': 'https://example.com/move/1'},
          'version_group_details': [
            {
              'level_learned_at': 1,
              'move_learn_method': {
                'name': 'level-up',
                'url': 'https://example.com/method/1',
              },
              'version_group': {
                'name': 'scarlet-violet',
                'url': 'https://example.com/version/1',
              },
            },
          ],
        },
      ],
    });

    expect(pokemon.stats.single.baseStat, 40);
    expect(pokemon.stats.single.stat.name, 'hp');
    expect(pokemon.moves.single.move.name, 'leafage');
    expect(
      pokemon.moves.single.versionGroupDetails.single.moveLearnMethod.name,
      'level-up',
    );
    expect(
      pokemon.moves.single.versionGroupDetails.single.versionGroup.name,
      'scarlet-violet',
    );
  });

  test('parses all damage relation categories for dual-type matchups', () {
    final typeData = PokemonTypeDetailData.fromJson({
      'damage_relations': {
        'double_damage_from': [
          {'name': 'ice', 'url': 'https://example.com/type/ice'},
        ],
        'half_damage_from': [
          {'name': 'fire', 'url': 'https://example.com/type/fire'},
        ],
        'no_damage_from': [
          {'name': 'ground', 'url': 'https://example.com/type/ground'},
        ],
        'double_damage_to': [
          {'name': 'water', 'url': 'https://example.com/type/water'},
        ],
        'half_damage_to': [
          {'name': 'grass', 'url': 'https://example.com/type/grass'},
        ],
        'no_damage_to': [
          {'name': 'ghost', 'url': 'https://example.com/type/ghost'},
        ],
      },
    });

    expect(typeData.demageRelations.doubleDamageFrom.single.name, 'ice');
    expect(typeData.demageRelations.halfDamageFrom.single.name, 'fire');
    expect(typeData.demageRelations.noDamageFrom.single.name, 'ground');
    expect(typeData.demageRelations.doubleDamageTo.single.name, 'water');
    expect(typeData.demageRelations.halfDamageTo.single.name, 'grass');
    expect(typeData.demageRelations.noDamageTo.single.name, 'ghost');
  });

  test('parses English move details and replaces effect chance placeholders',
      () {
    final move = PokemonMoveDetailData.fromJson({
      'name': 'thunder',
      'type': {'name': 'electric'},
      'damage_class': {'name': 'special'},
      'power': 110,
      'accuracy': 70,
      'pp': 10,
      'effect_chance': 30,
      'effect_entries': [
        {
          'effect': r'May paralyze the target with a $effect_chance% chance.',
          'short_effect': 'May paralyze the target.',
          'language': {'name': 'en'},
        },
      ],
      'flavor_text_entries': [
        {
          'flavor_text': 'Japanese text',
          'language': {'name': 'ja'},
        },
        {
          'flavor_text': 'A strong electric attack.\n',
          'language': {'name': 'en'},
        },
      ],
    });

    expect(move.type, 'electric');
    expect(move.damageClass, 'special');
    expect(move.power, 110);
    expect(move.accuracy, 70);
    expect(move.pp, 10);
    expect(move.description, 'A strong electric attack.');
    expect(move.effect, 'May paralyze the target with a 30% chance.');
  });

  test('keeps status move power and accuracy unset', () {
    final move = PokemonMoveDetailData.fromJson({
      'name': 'growl',
      'type': {'name': 'normal'},
      'damage_class': {'name': 'status'},
      'power': null,
      'accuracy': null,
      'pp': 40,
      'effect_chance': null,
      'effect_entries': [],
      'flavor_text_entries': [],
    });

    expect(move.damageClass, 'status');
    expect(move.power, isNull);
    expect(move.accuracy, isNull);
    expect(move.pp, 40);
  });

  test('parses alternate species forms', () {
    final form = PokemonSpeciesVarietyData.fromJson({
      'is_default': false,
      'pokemon': {
        'name': 'charizard-gmax',
        'url': 'https://example.com/pokemon/charizard-gmax',
      },
    });

    expect(form.isDefault, isFalse);
    expect(form.pokemon.name, 'charizard-gmax');
  });

  test('parses high-resolution and shiny artwork when available', () {
    final pokemon = PokemonData.fromJson({
      'id': 6,
      'name': 'charizard',
      'height': 17,
      'weight': 905,
      'types': [],
      'abilities': [],
      'sprites': {
        'front_default': 'https://example.com/charizard-small.png',
        'other': {
          'official-artwork': {
            'front_default': 'https://example.com/charizard-art.png',
            'front_shiny': 'https://example.com/charizard-art-shiny.png',
          },
        },
      },
    });

    expect(
      pokemon.sprites.other?.officialArtwork?.frontDefault,
      'https://example.com/charizard-art.png',
    );
    expect(
      pokemon.sprites.other?.officialArtwork?.frontShiny,
      'https://example.com/charizard-art-shiny.png',
    );
  });
}
