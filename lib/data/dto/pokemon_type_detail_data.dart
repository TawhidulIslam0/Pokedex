import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/dto/common_data.dart';

part 'pokemon_type_detail_data.freezed.dart';
part 'pokemon_type_detail_data.g.dart';

@freezed
class PokemonTypeDetailData with _$PokemonTypeDetailData {
  const factory PokemonTypeDetailData({
    @JsonKey(name: 'damage_relations')
    required DamageRelationsData demageRelations,
  }) = _PokemonTypeDetailData;

  factory PokemonTypeDetailData.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDetailDataFromJson(json);
}

@freezed
class DamageRelationsData with _$DamageRelationsData {
  const factory DamageRelationsData({
    @JsonKey(name: 'double_damage_from')
    @Default([])
    List<NameUrlData> doubleDamageFrom,
    @JsonKey(name: 'half_damage_from')
    @Default([])
    List<NameUrlData> halfDamageFrom,
    @JsonKey(name: 'no_damage_from')
    @Default([])
    List<NameUrlData> noDamageFrom,
    @JsonKey(name: 'double_damage_to')
    @Default([])
    List<NameUrlData> doubleDamageTo,
    @JsonKey(name: 'half_damage_to')
    @Default([])
    List<NameUrlData> halfDamageTo,
    @JsonKey(name: 'no_damage_to') @Default([]) List<NameUrlData> noDamageTo,
  }) = _DamageRelationsData;

  factory DamageRelationsData.fromJson(Map<String, dynamic> json) =>
      _$DamageRelationsDataFromJson(json);
}
