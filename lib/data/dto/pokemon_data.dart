import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/dto/common_data.dart';

part 'pokemon_data.freezed.dart';
part 'pokemon_data.g.dart';

@freezed
class PokemonData with _$PokemonData {
  const factory PokemonData({
    required int id,
    required String name,
    required double height,
    required double weight,
    required List<PokemonTypeData> types,
    NameUrlData? species,
    required SpritesData sprites,
    required List<PokemonAbilityData> abilities,
    @Default([]) List<PokemonStatData> stats,
    @Default([]) List<PokemonMoveData> moves,
  }) = _PokemonData;

  factory PokemonData.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataFromJson(json);
}

@freezed
class PokemonTypeData with _$PokemonTypeData {
  const factory PokemonTypeData({
    required int slot,
    required NameUrlData type,
  }) = _PokemonTypeData;

  factory PokemonTypeData.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDataFromJson(json);
}

@freezed
class SpritesData with _$SpritesData {
  const factory SpritesData({
    @JsonKey(name: 'front_default') required String frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    OtherData? other,
  }) = _SpritesData;

  factory SpritesData.fromJson(Map<String, dynamic> json) =>
      _$SpritesDataFromJson(json);
}

@freezed
class OtherData with _$OtherData {
  const factory OtherData({
    ImageUrlSetData? showdown,
    @JsonKey(name: 'official-artwork') ImageUrlSetData? officialArtwork,
    ImageUrlSetData? home,
  }) = _OtherData;

  factory OtherData.fromJson(Map<String, dynamic> json) =>
      _$OtherDataFromJson(json);
}

@freezed
class PokemonAbilityData with _$PokemonAbilityData {
  const factory PokemonAbilityData({
    required NameUrlData ability,
  }) = _PokemonAbilityData;

  factory PokemonAbilityData.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityDataFromJson(json);
}

@freezed
class PokemonStatData with _$PokemonStatData {
  const factory PokemonStatData({
    @JsonKey(name: 'base_stat') required int baseStat,
    required NameUrlData stat,
  }) = _PokemonStatData;

  factory PokemonStatData.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatDataFromJson(json);
}

@freezed
class PokemonMoveData with _$PokemonMoveData {
  const factory PokemonMoveData({
    required NameUrlData move,
    @JsonKey(name: 'version_group_details')
    @Default([])
    List<MoveVersionGroupDetailData> versionGroupDetails,
  }) = _PokemonMoveData;

  factory PokemonMoveData.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveDataFromJson(json);
}

@freezed
class MoveVersionGroupDetailData with _$MoveVersionGroupDetailData {
  const factory MoveVersionGroupDetailData({
    @JsonKey(name: 'level_learned_at') required int levelLearnedAt,
    @JsonKey(name: 'move_learn_method') required NameUrlData moveLearnMethod,
    @JsonKey(name: 'version_group') required NameUrlData versionGroup,
  }) = _MoveVersionGroupDetailData;

  factory MoveVersionGroupDetailData.fromJson(Map<String, dynamic> json) =>
      _$MoveVersionGroupDetailDataFromJson(json);
}
