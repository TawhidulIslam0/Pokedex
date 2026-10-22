// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonData _$PokemonDataFromJson(Map<String, dynamic> json) {
  return _PokemonData.fromJson(json);
}

/// @nodoc
mixin _$PokemonData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  List<PokemonTypeData> get types => throw _privateConstructorUsedError;
  NameUrlData? get species => throw _privateConstructorUsedError;
  SpritesData get sprites => throw _privateConstructorUsedError;
  List<PokemonAbilityData> get abilities => throw _privateConstructorUsedError;
  List<PokemonStatData> get stats => throw _privateConstructorUsedError;
  List<PokemonMoveData> get moves => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDataCopyWith<PokemonData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataCopyWith<$Res> {
  factory $PokemonDataCopyWith(
          PokemonData value, $Res Function(PokemonData) then) =
      _$PokemonDataCopyWithImpl<$Res, PokemonData>;
  @useResult
  $Res call(
      {int id,
      String name,
      double height,
      double weight,
      List<PokemonTypeData> types,
      NameUrlData? species,
      SpritesData sprites,
      List<PokemonAbilityData> abilities,
      List<PokemonStatData> stats,
      List<PokemonMoveData> moves});

  $NameUrlDataCopyWith<$Res>? get species;
  $SpritesDataCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonDataCopyWithImpl<$Res, $Val extends PokemonData>
    implements $PokemonDataCopyWith<$Res> {
  _$PokemonDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? species = freezed,
    Object? sprites = null,
    Object? abilities = null,
    Object? stats = null,
    Object? moves = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeData>,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as NameUrlData?,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesData,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilityData>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatData>,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<PokemonMoveData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res>? get species {
    if (_value.species == null) {
      return null;
    }

    return $NameUrlDataCopyWith<$Res>(_value.species!, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesDataCopyWith<$Res> get sprites {
    return $SpritesDataCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDataImplCopyWith<$Res>
    implements $PokemonDataCopyWith<$Res> {
  factory _$$PokemonDataImplCopyWith(
          _$PokemonDataImpl value, $Res Function(_$PokemonDataImpl) then) =
      __$$PokemonDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double height,
      double weight,
      List<PokemonTypeData> types,
      NameUrlData? species,
      SpritesData sprites,
      List<PokemonAbilityData> abilities,
      List<PokemonStatData> stats,
      List<PokemonMoveData> moves});

  @override
  $NameUrlDataCopyWith<$Res>? get species;
  @override
  $SpritesDataCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonDataImplCopyWithImpl<$Res>
    extends _$PokemonDataCopyWithImpl<$Res, _$PokemonDataImpl>
    implements _$$PokemonDataImplCopyWith<$Res> {
  __$$PokemonDataImplCopyWithImpl(
      _$PokemonDataImpl _value, $Res Function(_$PokemonDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? species = freezed,
    Object? sprites = null,
    Object? abilities = null,
    Object? stats = null,
    Object? moves = null,
  }) {
    return _then(_$PokemonDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeData>,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as NameUrlData?,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesData,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilityData>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatData>,
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<PokemonMoveData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDataImpl implements _PokemonData {
  const _$PokemonDataImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required final List<PokemonTypeData> types,
      this.species,
      required this.sprites,
      required final List<PokemonAbilityData> abilities,
      final List<PokemonStatData> stats = const [],
      final List<PokemonMoveData> moves = const []})
      : _types = types,
        _abilities = abilities,
        _stats = stats,
        _moves = moves;

  factory _$PokemonDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDataImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double height;
  @override
  final double weight;
  final List<PokemonTypeData> _types;
  @override
  List<PokemonTypeData> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final NameUrlData? species;
  @override
  final SpritesData sprites;
  final List<PokemonAbilityData> _abilities;
  @override
  List<PokemonAbilityData> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<PokemonStatData> _stats;
  @override
  @JsonKey()
  List<PokemonStatData> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<PokemonMoveData> _moves;
  @override
  @JsonKey()
  List<PokemonMoveData> get moves {
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moves);
  }

  @override
  String toString() {
    return 'PokemonData(id: $id, name: $name, height: $height, weight: $weight, types: $types, species: $species, sprites: $sprites, abilities: $abilities, stats: $stats, moves: $moves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._moves, _moves));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      weight,
      const DeepCollectionEquality().hash(_types),
      species,
      sprites,
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_moves));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith =>
      __$$PokemonDataImplCopyWithImpl<_$PokemonDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonData implements PokemonData {
  const factory _PokemonData(
      {required final int id,
      required final String name,
      required final double height,
      required final double weight,
      required final List<PokemonTypeData> types,
      final NameUrlData? species,
      required final SpritesData sprites,
      required final List<PokemonAbilityData> abilities,
      final List<PokemonStatData> stats,
      final List<PokemonMoveData> moves}) = _$PokemonDataImpl;

  factory _PokemonData.fromJson(Map<String, dynamic> json) =
      _$PokemonDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get height;
  @override
  double get weight;
  @override
  List<PokemonTypeData> get types;
  @override
  NameUrlData? get species;
  @override
  SpritesData get sprites;
  @override
  List<PokemonAbilityData> get abilities;
  @override
  List<PokemonStatData> get stats;
  @override
  List<PokemonMoveData> get moves;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeData _$PokemonTypeDataFromJson(Map<String, dynamic> json) {
  return _PokemonTypeData.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeData {
  int get slot => throw _privateConstructorUsedError;
  NameUrlData get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeDataCopyWith<PokemonTypeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDataCopyWith<$Res> {
  factory $PokemonTypeDataCopyWith(
          PokemonTypeData value, $Res Function(PokemonTypeData) then) =
      _$PokemonTypeDataCopyWithImpl<$Res, PokemonTypeData>;
  @useResult
  $Res call({int slot, NameUrlData type});

  $NameUrlDataCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeDataCopyWithImpl<$Res, $Val extends PokemonTypeData>
    implements $PokemonTypeDataCopyWith<$Res> {
  _$PokemonTypeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get type {
    return $NameUrlDataCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeDataImplCopyWith<$Res>
    implements $PokemonTypeDataCopyWith<$Res> {
  factory _$$PokemonTypeDataImplCopyWith(_$PokemonTypeDataImpl value,
          $Res Function(_$PokemonTypeDataImpl) then) =
      __$$PokemonTypeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, NameUrlData type});

  @override
  $NameUrlDataCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeDataImplCopyWithImpl<$Res>
    extends _$PokemonTypeDataCopyWithImpl<$Res, _$PokemonTypeDataImpl>
    implements _$$PokemonTypeDataImplCopyWith<$Res> {
  __$$PokemonTypeDataImplCopyWithImpl(
      _$PokemonTypeDataImpl _value, $Res Function(_$PokemonTypeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeDataImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeDataImpl implements _PokemonTypeData {
  const _$PokemonTypeDataImpl({required this.slot, required this.type});

  factory _$PokemonTypeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeDataImplFromJson(json);

  @override
  final int slot;
  @override
  final NameUrlData type;

  @override
  String toString() {
    return 'PokemonTypeData(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeDataImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeDataImplCopyWith<_$PokemonTypeDataImpl> get copyWith =>
      __$$PokemonTypeDataImplCopyWithImpl<_$PokemonTypeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeData implements PokemonTypeData {
  const factory _PokemonTypeData(
      {required final int slot,
      required final NameUrlData type}) = _$PokemonTypeDataImpl;

  factory _PokemonTypeData.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeDataImpl.fromJson;

  @override
  int get slot;
  @override
  NameUrlData get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeDataImplCopyWith<_$PokemonTypeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpritesData _$SpritesDataFromJson(Map<String, dynamic> json) {
  return _SpritesData.fromJson(json);
}

/// @nodoc
mixin _$SpritesData {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String? get frontShiny => throw _privateConstructorUsedError;
  OtherData? get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesDataCopyWith<SpritesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesDataCopyWith<$Res> {
  factory $SpritesDataCopyWith(
          SpritesData value, $Res Function(SpritesData) then) =
      _$SpritesDataCopyWithImpl<$Res, SpritesData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefault,
      @JsonKey(name: 'front_shiny') String? frontShiny,
      OtherData? other});

  $OtherDataCopyWith<$Res>? get other;
}

/// @nodoc
class _$SpritesDataCopyWithImpl<$Res, $Val extends SpritesData>
    implements $SpritesDataCopyWith<$Res> {
  _$SpritesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontShiny = freezed,
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as OtherData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherDataCopyWith<$Res>? get other {
    if (_value.other == null) {
      return null;
    }

    return $OtherDataCopyWith<$Res>(_value.other!, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpritesDataImplCopyWith<$Res>
    implements $SpritesDataCopyWith<$Res> {
  factory _$$SpritesDataImplCopyWith(
          _$SpritesDataImpl value, $Res Function(_$SpritesDataImpl) then) =
      __$$SpritesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefault,
      @JsonKey(name: 'front_shiny') String? frontShiny,
      OtherData? other});

  @override
  $OtherDataCopyWith<$Res>? get other;
}

/// @nodoc
class __$$SpritesDataImplCopyWithImpl<$Res>
    extends _$SpritesDataCopyWithImpl<$Res, _$SpritesDataImpl>
    implements _$$SpritesDataImplCopyWith<$Res> {
  __$$SpritesDataImplCopyWithImpl(
      _$SpritesDataImpl _value, $Res Function(_$SpritesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontShiny = freezed,
    Object? other = freezed,
  }) {
    return _then(_$SpritesDataImpl(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as OtherData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpritesDataImpl implements _SpritesData {
  const _$SpritesDataImpl(
      {@JsonKey(name: 'front_default') required this.frontDefault,
      @JsonKey(name: 'front_shiny') this.frontShiny,
      this.other});

  factory _$SpritesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpritesDataImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;
  @override
  final OtherData? other;

  @override
  String toString() {
    return 'SpritesData(frontDefault: $frontDefault, frontShiny: $frontShiny, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpritesDataImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, frontShiny, other);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpritesDataImplCopyWith<_$SpritesDataImpl> get copyWith =>
      __$$SpritesDataImplCopyWithImpl<_$SpritesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpritesDataImplToJson(
      this,
    );
  }
}

abstract class _SpritesData implements SpritesData {
  const factory _SpritesData(
      {@JsonKey(name: 'front_default') required final String frontDefault,
      @JsonKey(name: 'front_shiny') final String? frontShiny,
      final OtherData? other}) = _$SpritesDataImpl;

  factory _SpritesData.fromJson(Map<String, dynamic> json) =
      _$SpritesDataImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  String? get frontShiny;
  @override
  OtherData? get other;
  @override
  @JsonKey(ignore: true)
  _$$SpritesDataImplCopyWith<_$SpritesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherData _$OtherDataFromJson(Map<String, dynamic> json) {
  return _OtherData.fromJson(json);
}

/// @nodoc
mixin _$OtherData {
  ImageUrlSetData? get showdown => throw _privateConstructorUsedError;
  @JsonKey(name: 'official-artwork')
  ImageUrlSetData? get officialArtwork => throw _privateConstructorUsedError;
  ImageUrlSetData? get home => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherDataCopyWith<OtherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherDataCopyWith<$Res> {
  factory $OtherDataCopyWith(OtherData value, $Res Function(OtherData) then) =
      _$OtherDataCopyWithImpl<$Res, OtherData>;
  @useResult
  $Res call(
      {ImageUrlSetData? showdown,
      @JsonKey(name: 'official-artwork') ImageUrlSetData? officialArtwork,
      ImageUrlSetData? home});

  $ImageUrlSetDataCopyWith<$Res>? get showdown;
  $ImageUrlSetDataCopyWith<$Res>? get officialArtwork;
  $ImageUrlSetDataCopyWith<$Res>? get home;
}

/// @nodoc
class _$OtherDataCopyWithImpl<$Res, $Val extends OtherData>
    implements $OtherDataCopyWith<$Res> {
  _$OtherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showdown = freezed,
    Object? officialArtwork = freezed,
    Object? home = freezed,
  }) {
    return _then(_value.copyWith(
      showdown: freezed == showdown
          ? _value.showdown
          : showdown // ignore: cast_nullable_to_non_nullable
              as ImageUrlSetData?,
      officialArtwork: freezed == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as ImageUrlSetData?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as ImageUrlSetData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrlSetDataCopyWith<$Res>? get showdown {
    if (_value.showdown == null) {
      return null;
    }

    return $ImageUrlSetDataCopyWith<$Res>(_value.showdown!, (value) {
      return _then(_value.copyWith(showdown: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrlSetDataCopyWith<$Res>? get officialArtwork {
    if (_value.officialArtwork == null) {
      return null;
    }

    return $ImageUrlSetDataCopyWith<$Res>(_value.officialArtwork!, (value) {
      return _then(_value.copyWith(officialArtwork: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrlSetDataCopyWith<$Res>? get home {
    if (_value.home == null) {
      return null;
    }

    return $ImageUrlSetDataCopyWith<$Res>(_value.home!, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherDataImplCopyWith<$Res>
    implements $OtherDataCopyWith<$Res> {
  factory _$$OtherDataImplCopyWith(
          _$OtherDataImpl value, $Res Function(_$OtherDataImpl) then) =
      __$$OtherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ImageUrlSetData? showdown,
      @JsonKey(name: 'official-artwork') ImageUrlSetData? officialArtwork,
      ImageUrlSetData? home});

  @override
  $ImageUrlSetDataCopyWith<$Res>? get showdown;
  @override
  $ImageUrlSetDataCopyWith<$Res>? get officialArtwork;
  @override
  $ImageUrlSetDataCopyWith<$Res>? get home;
}

/// @nodoc
class __$$OtherDataImplCopyWithImpl<$Res>
    extends _$OtherDataCopyWithImpl<$Res, _$OtherDataImpl>
    implements _$$OtherDataImplCopyWith<$Res> {
  __$$OtherDataImplCopyWithImpl(
      _$OtherDataImpl _value, $Res Function(_$OtherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showdown = freezed,
    Object? officialArtwork = freezed,
    Object? home = freezed,
  }) {
    return _then(_$OtherDataImpl(
      showdown: freezed == showdown
          ? _value.showdown
          : showdown // ignore: cast_nullable_to_non_nullable
              as ImageUrlSetData?,
      officialArtwork: freezed == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as ImageUrlSetData?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as ImageUrlSetData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherDataImpl implements _OtherData {
  const _$OtherDataImpl(
      {this.showdown,
      @JsonKey(name: 'official-artwork') this.officialArtwork,
      this.home});

  factory _$OtherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherDataImplFromJson(json);

  @override
  final ImageUrlSetData? showdown;
  @override
  @JsonKey(name: 'official-artwork')
  final ImageUrlSetData? officialArtwork;
  @override
  final ImageUrlSetData? home;

  @override
  String toString() {
    return 'OtherData(showdown: $showdown, officialArtwork: $officialArtwork, home: $home)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherDataImpl &&
            (identical(other.showdown, showdown) ||
                other.showdown == showdown) &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork) &&
            (identical(other.home, home) || other.home == home));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, showdown, officialArtwork, home);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherDataImplCopyWith<_$OtherDataImpl> get copyWith =>
      __$$OtherDataImplCopyWithImpl<_$OtherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherDataImplToJson(
      this,
    );
  }
}

abstract class _OtherData implements OtherData {
  const factory _OtherData(
      {final ImageUrlSetData? showdown,
      @JsonKey(name: 'official-artwork') final ImageUrlSetData? officialArtwork,
      final ImageUrlSetData? home}) = _$OtherDataImpl;

  factory _OtherData.fromJson(Map<String, dynamic> json) =
      _$OtherDataImpl.fromJson;

  @override
  ImageUrlSetData? get showdown;
  @override
  @JsonKey(name: 'official-artwork')
  ImageUrlSetData? get officialArtwork;
  @override
  ImageUrlSetData? get home;
  @override
  @JsonKey(ignore: true)
  _$$OtherDataImplCopyWith<_$OtherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonAbilityData _$PokemonAbilityDataFromJson(Map<String, dynamic> json) {
  return _PokemonAbilityData.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilityData {
  NameUrlData get ability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonAbilityDataCopyWith<PokemonAbilityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityDataCopyWith<$Res> {
  factory $PokemonAbilityDataCopyWith(
          PokemonAbilityData value, $Res Function(PokemonAbilityData) then) =
      _$PokemonAbilityDataCopyWithImpl<$Res, PokemonAbilityData>;
  @useResult
  $Res call({NameUrlData ability});

  $NameUrlDataCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokemonAbilityDataCopyWithImpl<$Res, $Val extends PokemonAbilityData>
    implements $PokemonAbilityDataCopyWith<$Res> {
  _$PokemonAbilityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get ability {
    return $NameUrlDataCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonAbilityDataImplCopyWith<$Res>
    implements $PokemonAbilityDataCopyWith<$Res> {
  factory _$$PokemonAbilityDataImplCopyWith(_$PokemonAbilityDataImpl value,
          $Res Function(_$PokemonAbilityDataImpl) then) =
      __$$PokemonAbilityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NameUrlData ability});

  @override
  $NameUrlDataCopyWith<$Res> get ability;
}

/// @nodoc
class __$$PokemonAbilityDataImplCopyWithImpl<$Res>
    extends _$PokemonAbilityDataCopyWithImpl<$Res, _$PokemonAbilityDataImpl>
    implements _$$PokemonAbilityDataImplCopyWith<$Res> {
  __$$PokemonAbilityDataImplCopyWithImpl(_$PokemonAbilityDataImpl _value,
      $Res Function(_$PokemonAbilityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_$PokemonAbilityDataImpl(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAbilityDataImpl implements _PokemonAbilityData {
  const _$PokemonAbilityDataImpl({required this.ability});

  factory _$PokemonAbilityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAbilityDataImplFromJson(json);

  @override
  final NameUrlData ability;

  @override
  String toString() {
    return 'PokemonAbilityData(ability: $ability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilityDataImpl &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilityDataImplCopyWith<_$PokemonAbilityDataImpl> get copyWith =>
      __$$PokemonAbilityDataImplCopyWithImpl<_$PokemonAbilityDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAbilityDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonAbilityData implements PokemonAbilityData {
  const factory _PokemonAbilityData({required final NameUrlData ability}) =
      _$PokemonAbilityDataImpl;

  factory _PokemonAbilityData.fromJson(Map<String, dynamic> json) =
      _$PokemonAbilityDataImpl.fromJson;

  @override
  NameUrlData get ability;
  @override
  @JsonKey(ignore: true)
  _$$PokemonAbilityDataImplCopyWith<_$PokemonAbilityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonStatData _$PokemonStatDataFromJson(Map<String, dynamic> json) {
  return _PokemonStatData.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatData {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  NameUrlData get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonStatDataCopyWith<PokemonStatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatDataCopyWith<$Res> {
  factory $PokemonStatDataCopyWith(
          PokemonStatData value, $Res Function(PokemonStatData) then) =
      _$PokemonStatDataCopyWithImpl<$Res, PokemonStatData>;
  @useResult
  $Res call({@JsonKey(name: 'base_stat') int baseStat, NameUrlData stat});

  $NameUrlDataCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatDataCopyWithImpl<$Res, $Val extends PokemonStatData>
    implements $PokemonStatDataCopyWith<$Res> {
  _$PokemonStatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get stat {
    return $NameUrlDataCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonStatDataImplCopyWith<$Res>
    implements $PokemonStatDataCopyWith<$Res> {
  factory _$$PokemonStatDataImplCopyWith(_$PokemonStatDataImpl value,
          $Res Function(_$PokemonStatDataImpl) then) =
      __$$PokemonStatDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'base_stat') int baseStat, NameUrlData stat});

  @override
  $NameUrlDataCopyWith<$Res> get stat;
}

/// @nodoc
class __$$PokemonStatDataImplCopyWithImpl<$Res>
    extends _$PokemonStatDataCopyWithImpl<$Res, _$PokemonStatDataImpl>
    implements _$$PokemonStatDataImplCopyWith<$Res> {
  __$$PokemonStatDataImplCopyWithImpl(
      _$PokemonStatDataImpl _value, $Res Function(_$PokemonStatDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_$PokemonStatDataImpl(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatDataImpl implements _PokemonStatData {
  const _$PokemonStatDataImpl(
      {@JsonKey(name: 'base_stat') required this.baseStat, required this.stat});

  factory _$PokemonStatDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatDataImplFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final NameUrlData stat;

  @override
  String toString() {
    return 'PokemonStatData(baseStat: $baseStat, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatDataImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatDataImplCopyWith<_$PokemonStatDataImpl> get copyWith =>
      __$$PokemonStatDataImplCopyWithImpl<_$PokemonStatDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonStatData implements PokemonStatData {
  const factory _PokemonStatData(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final NameUrlData stat}) = _$PokemonStatDataImpl;

  factory _PokemonStatData.fromJson(Map<String, dynamic> json) =
      _$PokemonStatDataImpl.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  NameUrlData get stat;
  @override
  @JsonKey(ignore: true)
  _$$PokemonStatDataImplCopyWith<_$PokemonStatDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonMoveData _$PokemonMoveDataFromJson(Map<String, dynamic> json) {
  return _PokemonMoveData.fromJson(json);
}

/// @nodoc
mixin _$PokemonMoveData {
  NameUrlData get move => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_group_details')
  List<MoveVersionGroupDetailData> get versionGroupDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonMoveDataCopyWith<PokemonMoveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMoveDataCopyWith<$Res> {
  factory $PokemonMoveDataCopyWith(
          PokemonMoveData value, $Res Function(PokemonMoveData) then) =
      _$PokemonMoveDataCopyWithImpl<$Res, PokemonMoveData>;
  @useResult
  $Res call(
      {NameUrlData move,
      @JsonKey(name: 'version_group_details')
      List<MoveVersionGroupDetailData> versionGroupDetails});

  $NameUrlDataCopyWith<$Res> get move;
}

/// @nodoc
class _$PokemonMoveDataCopyWithImpl<$Res, $Val extends PokemonMoveData>
    implements $PokemonMoveDataCopyWith<$Res> {
  _$PokemonMoveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
    Object? versionGroupDetails = null,
  }) {
    return _then(_value.copyWith(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
      versionGroupDetails: null == versionGroupDetails
          ? _value.versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<MoveVersionGroupDetailData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get move {
    return $NameUrlDataCopyWith<$Res>(_value.move, (value) {
      return _then(_value.copyWith(move: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonMoveDataImplCopyWith<$Res>
    implements $PokemonMoveDataCopyWith<$Res> {
  factory _$$PokemonMoveDataImplCopyWith(_$PokemonMoveDataImpl value,
          $Res Function(_$PokemonMoveDataImpl) then) =
      __$$PokemonMoveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NameUrlData move,
      @JsonKey(name: 'version_group_details')
      List<MoveVersionGroupDetailData> versionGroupDetails});

  @override
  $NameUrlDataCopyWith<$Res> get move;
}

/// @nodoc
class __$$PokemonMoveDataImplCopyWithImpl<$Res>
    extends _$PokemonMoveDataCopyWithImpl<$Res, _$PokemonMoveDataImpl>
    implements _$$PokemonMoveDataImplCopyWith<$Res> {
  __$$PokemonMoveDataImplCopyWithImpl(
      _$PokemonMoveDataImpl _value, $Res Function(_$PokemonMoveDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
    Object? versionGroupDetails = null,
  }) {
    return _then(_$PokemonMoveDataImpl(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
      versionGroupDetails: null == versionGroupDetails
          ? _value._versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<MoveVersionGroupDetailData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonMoveDataImpl implements _PokemonMoveData {
  const _$PokemonMoveDataImpl(
      {required this.move,
      @JsonKey(name: 'version_group_details')
      final List<MoveVersionGroupDetailData> versionGroupDetails = const []})
      : _versionGroupDetails = versionGroupDetails;

  factory _$PokemonMoveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonMoveDataImplFromJson(json);

  @override
  final NameUrlData move;
  final List<MoveVersionGroupDetailData> _versionGroupDetails;
  @override
  @JsonKey(name: 'version_group_details')
  List<MoveVersionGroupDetailData> get versionGroupDetails {
    if (_versionGroupDetails is EqualUnmodifiableListView)
      return _versionGroupDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versionGroupDetails);
  }

  @override
  String toString() {
    return 'PokemonMoveData(move: $move, versionGroupDetails: $versionGroupDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonMoveDataImpl &&
            (identical(other.move, move) || other.move == move) &&
            const DeepCollectionEquality()
                .equals(other._versionGroupDetails, _versionGroupDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, move,
      const DeepCollectionEquality().hash(_versionGroupDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonMoveDataImplCopyWith<_$PokemonMoveDataImpl> get copyWith =>
      __$$PokemonMoveDataImplCopyWithImpl<_$PokemonMoveDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonMoveDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonMoveData implements PokemonMoveData {
  const factory _PokemonMoveData(
          {required final NameUrlData move,
          @JsonKey(name: 'version_group_details')
          final List<MoveVersionGroupDetailData> versionGroupDetails}) =
      _$PokemonMoveDataImpl;

  factory _PokemonMoveData.fromJson(Map<String, dynamic> json) =
      _$PokemonMoveDataImpl.fromJson;

  @override
  NameUrlData get move;
  @override
  @JsonKey(name: 'version_group_details')
  List<MoveVersionGroupDetailData> get versionGroupDetails;
  @override
  @JsonKey(ignore: true)
  _$$PokemonMoveDataImplCopyWith<_$PokemonMoveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MoveVersionGroupDetailData _$MoveVersionGroupDetailDataFromJson(
    Map<String, dynamic> json) {
  return _MoveVersionGroupDetailData.fromJson(json);
}

/// @nodoc
mixin _$MoveVersionGroupDetailData {
  @JsonKey(name: 'level_learned_at')
  int get levelLearnedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'move_learn_method')
  NameUrlData get moveLearnMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_group')
  NameUrlData get versionGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveVersionGroupDetailDataCopyWith<MoveVersionGroupDetailData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveVersionGroupDetailDataCopyWith<$Res> {
  factory $MoveVersionGroupDetailDataCopyWith(MoveVersionGroupDetailData value,
          $Res Function(MoveVersionGroupDetailData) then) =
      _$MoveVersionGroupDetailDataCopyWithImpl<$Res,
          MoveVersionGroupDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'level_learned_at') int levelLearnedAt,
      @JsonKey(name: 'move_learn_method') NameUrlData moveLearnMethod,
      @JsonKey(name: 'version_group') NameUrlData versionGroup});

  $NameUrlDataCopyWith<$Res> get moveLearnMethod;
  $NameUrlDataCopyWith<$Res> get versionGroup;
}

/// @nodoc
class _$MoveVersionGroupDetailDataCopyWithImpl<$Res,
        $Val extends MoveVersionGroupDetailData>
    implements $MoveVersionGroupDetailDataCopyWith<$Res> {
  _$MoveVersionGroupDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = null,
    Object? moveLearnMethod = null,
    Object? versionGroup = null,
  }) {
    return _then(_value.copyWith(
      levelLearnedAt: null == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int,
      moveLearnMethod: null == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get moveLearnMethod {
    return $NameUrlDataCopyWith<$Res>(_value.moveLearnMethod, (value) {
      return _then(_value.copyWith(moveLearnMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get versionGroup {
    return $NameUrlDataCopyWith<$Res>(_value.versionGroup, (value) {
      return _then(_value.copyWith(versionGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoveVersionGroupDetailDataImplCopyWith<$Res>
    implements $MoveVersionGroupDetailDataCopyWith<$Res> {
  factory _$$MoveVersionGroupDetailDataImplCopyWith(
          _$MoveVersionGroupDetailDataImpl value,
          $Res Function(_$MoveVersionGroupDetailDataImpl) then) =
      __$$MoveVersionGroupDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'level_learned_at') int levelLearnedAt,
      @JsonKey(name: 'move_learn_method') NameUrlData moveLearnMethod,
      @JsonKey(name: 'version_group') NameUrlData versionGroup});

  @override
  $NameUrlDataCopyWith<$Res> get moveLearnMethod;
  @override
  $NameUrlDataCopyWith<$Res> get versionGroup;
}

/// @nodoc
class __$$MoveVersionGroupDetailDataImplCopyWithImpl<$Res>
    extends _$MoveVersionGroupDetailDataCopyWithImpl<$Res,
        _$MoveVersionGroupDetailDataImpl>
    implements _$$MoveVersionGroupDetailDataImplCopyWith<$Res> {
  __$$MoveVersionGroupDetailDataImplCopyWithImpl(
      _$MoveVersionGroupDetailDataImpl _value,
      $Res Function(_$MoveVersionGroupDetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = null,
    Object? moveLearnMethod = null,
    Object? versionGroup = null,
  }) {
    return _then(_$MoveVersionGroupDetailDataImpl(
      levelLearnedAt: null == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int,
      moveLearnMethod: null == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveVersionGroupDetailDataImpl implements _MoveVersionGroupDetailData {
  const _$MoveVersionGroupDetailDataImpl(
      {@JsonKey(name: 'level_learned_at') required this.levelLearnedAt,
      @JsonKey(name: 'move_learn_method') required this.moveLearnMethod,
      @JsonKey(name: 'version_group') required this.versionGroup});

  factory _$MoveVersionGroupDetailDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MoveVersionGroupDetailDataImplFromJson(json);

  @override
  @JsonKey(name: 'level_learned_at')
  final int levelLearnedAt;
  @override
  @JsonKey(name: 'move_learn_method')
  final NameUrlData moveLearnMethod;
  @override
  @JsonKey(name: 'version_group')
  final NameUrlData versionGroup;

  @override
  String toString() {
    return 'MoveVersionGroupDetailData(levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveVersionGroupDetailDataImpl &&
            (identical(other.levelLearnedAt, levelLearnedAt) ||
                other.levelLearnedAt == levelLearnedAt) &&
            (identical(other.moveLearnMethod, moveLearnMethod) ||
                other.moveLearnMethod == moveLearnMethod) &&
            (identical(other.versionGroup, versionGroup) ||
                other.versionGroup == versionGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, levelLearnedAt, moveLearnMethod, versionGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveVersionGroupDetailDataImplCopyWith<_$MoveVersionGroupDetailDataImpl>
      get copyWith => __$$MoveVersionGroupDetailDataImplCopyWithImpl<
          _$MoveVersionGroupDetailDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveVersionGroupDetailDataImplToJson(
      this,
    );
  }
}

abstract class _MoveVersionGroupDetailData
    implements MoveVersionGroupDetailData {
  const factory _MoveVersionGroupDetailData(
          {@JsonKey(name: 'level_learned_at') required final int levelLearnedAt,
          @JsonKey(name: 'move_learn_method')
          required final NameUrlData moveLearnMethod,
          @JsonKey(name: 'version_group')
          required final NameUrlData versionGroup}) =
      _$MoveVersionGroupDetailDataImpl;

  factory _MoveVersionGroupDetailData.fromJson(Map<String, dynamic> json) =
      _$MoveVersionGroupDetailDataImpl.fromJson;

  @override
  @JsonKey(name: 'level_learned_at')
  int get levelLearnedAt;
  @override
  @JsonKey(name: 'move_learn_method')
  NameUrlData get moveLearnMethod;
  @override
  @JsonKey(name: 'version_group')
  NameUrlData get versionGroup;
  @override
  @JsonKey(ignore: true)
  _$$MoveVersionGroupDetailDataImplCopyWith<_$MoveVersionGroupDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
