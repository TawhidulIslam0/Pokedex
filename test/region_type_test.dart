import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/domain/model/region_type.dart';

void main() {
  test('all region starters use the same uncropped sprite source and size', () {
    for (final region in RegionType.values) {
      expect(region.startingPokemonImages, hasLength(3));
      for (var index = 0; index < region.startingPokedexIds.length; index++) {
        expect(
          region.startingPokemonImages[index],
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${region.startingPokedexIds[index]}.png',
        );
      }
    }
  });

  test('Paldea has its own regional card artwork', () {
    expect(
      RegionType.paldea.assetName,
      'assets/images/region_paldea.svg',
    );
    expect(RegionType.paldea.assetName, isNot(RegionType.galar.assetName));
  });
}
