// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonTypeDetailData _$PokemonTypeDetailDataFromJson(
    Map<String, dynamic> json) {
  return _PokemonTypeDetailData.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeDetailData {
  @JsonKey(name: 'damage_relations')
  DamageRelationsData get demageRelations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeDetailDataCopyWith<PokemonTypeDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDetailDataCopyWith<$Res> {
  factory $PokemonTypeDetailDataCopyWith(PokemonTypeDetailData value,
          $Res Function(PokemonTypeDetailData) then) =
      _$PokemonTypeDetailDataCopyWithImpl<$Res, PokemonTypeDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'damage_relations') DamageRelationsData demageRelations});

  $DamageRelationsDataCopyWith<$Res> get demageRelations;
}

/// @nodoc
class _$PokemonTypeDetailDataCopyWithImpl<$Res,
        $Val extends PokemonTypeDetailData>
    implements $PokemonTypeDetailDataCopyWith<$Res> {
  _$PokemonTypeDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? demageRelations = null,
  }) {
    return _then(_value.copyWith(
      demageRelations: null == demageRelations
          ? _value.demageRelations
          : demageRelations // ignore: cast_nullable_to_non_nullable
              as DamageRelationsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageRelationsDataCopyWith<$Res> get demageRelations {
    return $DamageRelationsDataCopyWith<$Res>(_value.demageRelations, (value) {
      return _then(_value.copyWith(demageRelations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeDetailDataImplCopyWith<$Res>
    implements $PokemonTypeDetailDataCopyWith<$Res> {
  factory _$$PokemonTypeDetailDataImplCopyWith(
          _$PokemonTypeDetailDataImpl value,
          $Res Function(_$PokemonTypeDetailDataImpl) then) =
      __$$PokemonTypeDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'damage_relations') DamageRelationsData demageRelations});

  @override
  $DamageRelationsDataCopyWith<$Res> get demageRelations;
}

/// @nodoc
class __$$PokemonTypeDetailDataImplCopyWithImpl<$Res>
    extends _$PokemonTypeDetailDataCopyWithImpl<$Res,
        _$PokemonTypeDetailDataImpl>
    implements _$$PokemonTypeDetailDataImplCopyWith<$Res> {
  __$$PokemonTypeDetailDataImplCopyWithImpl(_$PokemonTypeDetailDataImpl _value,
      $Res Function(_$PokemonTypeDetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? demageRelations = null,
  }) {
    return _then(_$PokemonTypeDetailDataImpl(
      demageRelations: null == demageRelations
          ? _value.demageRelations
          : demageRelations // ignore: cast_nullable_to_non_nullable
              as DamageRelationsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeDetailDataImpl implements _PokemonTypeDetailData {
  const _$PokemonTypeDetailDataImpl(
      {@JsonKey(name: 'damage_relations') required this.demageRelations});

  factory _$PokemonTypeDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeDetailDataImplFromJson(json);

  @override
  @JsonKey(name: 'damage_relations')
  final DamageRelationsData demageRelations;

  @override
  String toString() {
    return 'PokemonTypeDetailData(demageRelations: $demageRelations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeDetailDataImpl &&
            (identical(other.demageRelations, demageRelations) ||
                other.demageRelations == demageRelations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, demageRelations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeDetailDataImplCopyWith<_$PokemonTypeDetailDataImpl>
      get copyWith => __$$PokemonTypeDetailDataImplCopyWithImpl<
          _$PokemonTypeDetailDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeDetailDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeDetailData implements PokemonTypeDetailData {
  const factory _PokemonTypeDetailData(
          {@JsonKey(name: 'damage_relations')
          required final DamageRelationsData demageRelations}) =
      _$PokemonTypeDetailDataImpl;

  factory _PokemonTypeDetailData.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeDetailDataImpl.fromJson;

  @override
  @JsonKey(name: 'damage_relations')
  DamageRelationsData get demageRelations;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeDetailDataImplCopyWith<_$PokemonTypeDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DamageRelationsData _$DamageRelationsDataFromJson(Map<String, dynamic> json) {
  return _DamageRelationsData.fromJson(json);
}

/// @nodoc
mixin _$DamageRelationsData {
  @JsonKey(name: 'double_damage_from')
  List<NameUrlData> get doubleDamageFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'half_damage_from')
  List<NameUrlData> get halfDamageFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_damage_from')
  List<NameUrlData> get noDamageFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'double_damage_to')
  List<NameUrlData> get doubleDamageTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'half_damage_to')
  List<NameUrlData> get halfDamageTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_damage_to')
  List<NameUrlData> get noDamageTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DamageRelationsDataCopyWith<DamageRelationsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DamageRelationsDataCopyWith<$Res> {
  factory $DamageRelationsDataCopyWith(
          DamageRelationsData value, $Res Function(DamageRelationsData) then) =
      _$DamageRelationsDataCopyWithImpl<$Res, DamageRelationsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'double_damage_from') List<NameUrlData> doubleDamageFrom,
      @JsonKey(name: 'half_damage_from') List<NameUrlData> halfDamageFrom,
      @JsonKey(name: 'no_damage_from') List<NameUrlData> noDamageFrom,
      @JsonKey(name: 'double_damage_to') List<NameUrlData> doubleDamageTo,
      @JsonKey(name: 'half_damage_to') List<NameUrlData> halfDamageTo,
      @JsonKey(name: 'no_damage_to') List<NameUrlData> noDamageTo});
}

/// @nodoc
class _$DamageRelationsDataCopyWithImpl<$Res, $Val extends DamageRelationsData>
    implements $DamageRelationsDataCopyWith<$Res> {
  _$DamageRelationsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doubleDamageFrom = null,
    Object? halfDamageFrom = null,
    Object? noDamageFrom = null,
    Object? doubleDamageTo = null,
    Object? halfDamageTo = null,
    Object? noDamageTo = null,
  }) {
    return _then(_value.copyWith(
      doubleDamageFrom: null == doubleDamageFrom
          ? _value.doubleDamageFrom
          : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      halfDamageFrom: null == halfDamageFrom
          ? _value.halfDamageFrom
          : halfDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      noDamageFrom: null == noDamageFrom
          ? _value.noDamageFrom
          : noDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      doubleDamageTo: null == doubleDamageTo
          ? _value.doubleDamageTo
          : doubleDamageTo // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      halfDamageTo: null == halfDamageTo
          ? _value.halfDamageTo
          : halfDamageTo // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      noDamageTo: null == noDamageTo
          ? _value.noDamageTo
          : noDamageTo // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DamageRelationsDataImplCopyWith<$Res>
    implements $DamageRelationsDataCopyWith<$Res> {
  factory _$$DamageRelationsDataImplCopyWith(_$DamageRelationsDataImpl value,
          $Res Function(_$DamageRelationsDataImpl) then) =
      __$$DamageRelationsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'double_damage_from') List<NameUrlData> doubleDamageFrom,
      @JsonKey(name: 'half_damage_from') List<NameUrlData> halfDamageFrom,
      @JsonKey(name: 'no_damage_from') List<NameUrlData> noDamageFrom,
      @JsonKey(name: 'double_damage_to') List<NameUrlData> doubleDamageTo,
      @JsonKey(name: 'half_damage_to') List<NameUrlData> halfDamageTo,
      @JsonKey(name: 'no_damage_to') List<NameUrlData> noDamageTo});
}

/// @nodoc
class __$$DamageRelationsDataImplCopyWithImpl<$Res>
    extends _$DamageRelationsDataCopyWithImpl<$Res, _$DamageRelationsDataImpl>
    implements _$$DamageRelationsDataImplCopyWith<$Res> {
  __$$DamageRelationsDataImplCopyWithImpl(_$DamageRelationsDataImpl _value,
      $Res Function(_$DamageRelationsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doubleDamageFrom = null,
    Object? halfDamageFrom = null,
    Object? noDamageFrom = null,
    Object? doubleDamageTo = null,
    Object? halfDamageTo = null,
    Object? noDamageTo = null,
  }) {
    return _then(_$DamageRelationsDataImpl(
      doubleDamageFrom: null == doubleDamageFrom
          ? _value._doubleDamageFrom
          : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      halfDamageFrom: null == halfDamageFrom
          ? _value._halfDamageFrom
          : halfDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      noDamageFrom: null == noDamageFrom
          ? _value._noDamageFrom
          : noDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      doubleDamageTo: null == doubleDamageTo
          ? _value._doubleDamageTo
          : doubleDamageTo // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      halfDamageTo: null == halfDamageTo
          ? _value._halfDamageTo
          : halfDamageTo // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
      noDamageTo: null == noDamageTo
          ? _value._noDamageTo
          : noDamageTo // ignore: cast_nullable_to_non_nullable
              as List<NameUrlData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DamageRelationsDataImpl implements _DamageRelationsData {
  const _$DamageRelationsDataImpl(
      {@JsonKey(name: 'double_damage_from')
      final List<NameUrlData> doubleDamageFrom = const [],
      @JsonKey(name: 'half_damage_from')
      final List<NameUrlData> halfDamageFrom = const [],
      @JsonKey(name: 'no_damage_from')
      final List<NameUrlData> noDamageFrom = const [],
      @JsonKey(name: 'double_damage_to')
      final List<NameUrlData> doubleDamageTo = const [],
      @JsonKey(name: 'half_damage_to')
      final List<NameUrlData> halfDamageTo = const [],
      @JsonKey(name: 'no_damage_to')
      final List<NameUrlData> noDamageTo = const []})
      : _doubleDamageFrom = doubleDamageFrom,
        _halfDamageFrom = halfDamageFrom,
        _noDamageFrom = noDamageFrom,
        _doubleDamageTo = doubleDamageTo,
        _halfDamageTo = halfDamageTo,
        _noDamageTo = noDamageTo;

  factory _$DamageRelationsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DamageRelationsDataImplFromJson(json);

  final List<NameUrlData> _doubleDamageFrom;
  @override
  @JsonKey(name: 'double_damage_from')
  List<NameUrlData> get doubleDamageFrom {
    if (_doubleDamageFrom is EqualUnmodifiableListView)
      return _doubleDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doubleDamageFrom);
  }

  final List<NameUrlData> _halfDamageFrom;
  @override
  @JsonKey(name: 'half_damage_from')
  List<NameUrlData> get halfDamageFrom {
    if (_halfDamageFrom is EqualUnmodifiableListView) return _halfDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_halfDamageFrom);
  }

  final List<NameUrlData> _noDamageFrom;
  @override
  @JsonKey(name: 'no_damage_from')
  List<NameUrlData> get noDamageFrom {
    if (_noDamageFrom is EqualUnmodifiableListView) return _noDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noDamageFrom);
  }

  final List<NameUrlData> _doubleDamageTo;
  @override
  @JsonKey(name: 'double_damage_to')
  List<NameUrlData> get doubleDamageTo {
    if (_doubleDamageTo is EqualUnmodifiableListView) return _doubleDamageTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doubleDamageTo);
  }

  final List<NameUrlData> _halfDamageTo;
  @override
  @JsonKey(name: 'half_damage_to')
  List<NameUrlData> get halfDamageTo {
    if (_halfDamageTo is EqualUnmodifiableListView) return _halfDamageTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_halfDamageTo);
  }

  final List<NameUrlData> _noDamageTo;
  @override
  @JsonKey(name: 'no_damage_to')
  List<NameUrlData> get noDamageTo {
    if (_noDamageTo is EqualUnmodifiableListView) return _noDamageTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noDamageTo);
  }

  @override
  String toString() {
    return 'DamageRelationsData(doubleDamageFrom: $doubleDamageFrom, halfDamageFrom: $halfDamageFrom, noDamageFrom: $noDamageFrom, doubleDamageTo: $doubleDamageTo, halfDamageTo: $halfDamageTo, noDamageTo: $noDamageTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DamageRelationsDataImpl &&
            const DeepCollectionEquality()
                .equals(other._doubleDamageFrom, _doubleDamageFrom) &&
            const DeepCollectionEquality()
                .equals(other._halfDamageFrom, _halfDamageFrom) &&
            const DeepCollectionEquality()
                .equals(other._noDamageFrom, _noDamageFrom) &&
            const DeepCollectionEquality()
                .equals(other._doubleDamageTo, _doubleDamageTo) &&
            const DeepCollectionEquality()
                .equals(other._halfDamageTo, _halfDamageTo) &&
            const DeepCollectionEquality()
                .equals(other._noDamageTo, _noDamageTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_doubleDamageFrom),
      const DeepCollectionEquality().hash(_halfDamageFrom),
      const DeepCollectionEquality().hash(_noDamageFrom),
      const DeepCollectionEquality().hash(_doubleDamageTo),
      const DeepCollectionEquality().hash(_halfDamageTo),
      const DeepCollectionEquality().hash(_noDamageTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DamageRelationsDataImplCopyWith<_$DamageRelationsDataImpl> get copyWith =>
      __$$DamageRelationsDataImplCopyWithImpl<_$DamageRelationsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DamageRelationsDataImplToJson(
      this,
    );
  }
}

abstract class _DamageRelationsData implements DamageRelationsData {
  const factory _DamageRelationsData(
      {@JsonKey(name: 'double_damage_from')
      final List<NameUrlData> doubleDamageFrom,
      @JsonKey(name: 'half_damage_from') final List<NameUrlData> halfDamageFrom,
      @JsonKey(name: 'no_damage_from') final List<NameUrlData> noDamageFrom,
      @JsonKey(name: 'double_damage_to') final List<NameUrlData> doubleDamageTo,
      @JsonKey(name: 'half_damage_to') final List<NameUrlData> halfDamageTo,
      @JsonKey(name: 'no_damage_to')
      final List<NameUrlData> noDamageTo}) = _$DamageRelationsDataImpl;

  factory _DamageRelationsData.fromJson(Map<String, dynamic> json) =
      _$DamageRelationsDataImpl.fromJson;

  @override
  @JsonKey(name: 'double_damage_from')
  List<NameUrlData> get doubleDamageFrom;
  @override
  @JsonKey(name: 'half_damage_from')
  List<NameUrlData> get halfDamageFrom;
  @override
  @JsonKey(name: 'no_damage_from')
  List<NameUrlData> get noDamageFrom;
  @override
  @JsonKey(name: 'double_damage_to')
  List<NameUrlData> get doubleDamageTo;
  @override
  @JsonKey(name: 'half_damage_to')
  List<NameUrlData> get halfDamageTo;
  @override
  @JsonKey(name: 'no_damage_to')
  List<NameUrlData> get noDamageTo;
  @override
  @JsonKey(ignore: true)
  _$$DamageRelationsDataImplCopyWith<_$DamageRelationsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
