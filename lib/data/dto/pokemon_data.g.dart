// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDataImpl _$$PokemonDataImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      species: json['species'] == null
          ? null
          : NameUrlData.fromJson(json['species'] as Map<String, dynamic>),
      sprites: SpritesData.fromJson(json['sprites'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbilityData.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>?)
              ?.map((e) => PokemonStatData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      moves: (json['moves'] as List<dynamic>?)
              ?.map((e) => PokemonMoveData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PokemonDataImplToJson(_$PokemonDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'species': instance.species,
      'sprites': instance.sprites,
      'abilities': instance.abilities,
      'stats': instance.stats,
      'moves': instance.moves,
    };

_$PokemonTypeDataImpl _$$PokemonTypeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeDataImpl(
      slot: (json['slot'] as num).toInt(),
      type: NameUrlData.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeDataImplToJson(
        _$PokemonTypeDataImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$SpritesDataImpl _$$SpritesDataImplFromJson(Map<String, dynamic> json) =>
    _$SpritesDataImpl(
      frontDefault: json['front_default'] as String,
      frontShiny: json['front_shiny'] as String?,
      other: json['other'] == null
          ? null
          : OtherData.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpritesDataImplToJson(_$SpritesDataImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
      'other': instance.other,
    };

_$OtherDataImpl _$$OtherDataImplFromJson(Map<String, dynamic> json) =>
    _$OtherDataImpl(
      showdown: json['showdown'] == null
          ? null
          : ImageUrlSetData.fromJson(json['showdown'] as Map<String, dynamic>),
      officialArtwork: json['official-artwork'] == null
          ? null
          : ImageUrlSetData.fromJson(
              json['official-artwork'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : ImageUrlSetData.fromJson(json['home'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherDataImplToJson(_$OtherDataImpl instance) =>
    <String, dynamic>{
      'showdown': instance.showdown,
      'official-artwork': instance.officialArtwork,
      'home': instance.home,
    };

_$PokemonAbilityDataImpl _$$PokemonAbilityDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonAbilityDataImpl(
      ability: NameUrlData.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonAbilityDataImplToJson(
        _$PokemonAbilityDataImpl instance) =>
    <String, dynamic>{
      'ability': instance.ability,
    };

_$PokemonStatDataImpl _$$PokemonStatDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonStatDataImpl(
      baseStat: (json['base_stat'] as num).toInt(),
      stat: NameUrlData.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonStatDataImplToJson(
        _$PokemonStatDataImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.stat,
    };

_$PokemonMoveDataImpl _$$PokemonMoveDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonMoveDataImpl(
      move: NameUrlData.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['version_group_details'] as List<dynamic>?)
              ?.map((e) => MoveVersionGroupDetailData.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PokemonMoveDataImplToJson(
        _$PokemonMoveDataImpl instance) =>
    <String, dynamic>{
      'move': instance.move,
      'version_group_details': instance.versionGroupDetails,
    };

_$MoveVersionGroupDetailDataImpl _$$MoveVersionGroupDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MoveVersionGroupDetailDataImpl(
      levelLearnedAt: (json['level_learned_at'] as num).toInt(),
      moveLearnMethod: NameUrlData.fromJson(
          json['move_learn_method'] as Map<String, dynamic>),
      versionGroup:
          NameUrlData.fromJson(json['version_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MoveVersionGroupDetailDataImplToJson(
        _$MoveVersionGroupDetailDataImpl instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'move_learn_method': instance.moveLearnMethod,
      'version_group': instance.versionGroup,
    };
