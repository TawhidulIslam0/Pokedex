import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

part 'pokemon_weakness_types_info.freezed.dart';

@freezed
class PokemonWeaknessTypesInfo with _$PokemonWeaknessTypesInfo {
  const factory PokemonWeaknessTypesInfo({
    required List<PokemonType> weaknesses,
    required List<PokemonType> strengths,
    required Map<PokemonType, double> effectiveness,
  }) = _PokemonWeaknessTypesInfo;
}
