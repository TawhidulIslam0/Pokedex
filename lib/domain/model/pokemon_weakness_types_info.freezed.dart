// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_weakness_types_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonWeaknessTypesInfo {
  List<PokemonType> get weaknesses => throw _privateConstructorUsedError;
  List<PokemonType> get strengths => throw _privateConstructorUsedError;
  Map<PokemonType, double> get effectiveness =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonWeaknessTypesInfoCopyWith<PokemonWeaknessTypesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonWeaknessTypesInfoCopyWith<$Res> {
  factory $PokemonWeaknessTypesInfoCopyWith(PokemonWeaknessTypesInfo value,
          $Res Function(PokemonWeaknessTypesInfo) then) =
      _$PokemonWeaknessTypesInfoCopyWithImpl<$Res, PokemonWeaknessTypesInfo>;
  @useResult
  $Res call(
      {List<PokemonType> weaknesses,
      List<PokemonType> strengths,
      Map<PokemonType, double> effectiveness});
}

/// @nodoc
class _$PokemonWeaknessTypesInfoCopyWithImpl<$Res,
        $Val extends PokemonWeaknessTypesInfo>
    implements $PokemonWeaknessTypesInfoCopyWith<$Res> {
  _$PokemonWeaknessTypesInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weaknesses = null,
    Object? strengths = null,
    Object? effectiveness = null,
  }) {
    return _then(_value.copyWith(
      weaknesses: null == weaknesses
          ? _value.weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      strengths: null == strengths
          ? _value.strengths
          : strengths // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      effectiveness: null == effectiveness
          ? _value.effectiveness
          : effectiveness // ignore: cast_nullable_to_non_nullable
              as Map<PokemonType, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonWeaknessTypesInfoImplCopyWith<$Res>
    implements $PokemonWeaknessTypesInfoCopyWith<$Res> {
  factory _$$PokemonWeaknessTypesInfoImplCopyWith(
          _$PokemonWeaknessTypesInfoImpl value,
          $Res Function(_$PokemonWeaknessTypesInfoImpl) then) =
      __$$PokemonWeaknessTypesInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PokemonType> weaknesses,
      List<PokemonType> strengths,
      Map<PokemonType, double> effectiveness});
}

/// @nodoc
class __$$PokemonWeaknessTypesInfoImplCopyWithImpl<$Res>
    extends _$PokemonWeaknessTypesInfoCopyWithImpl<$Res,
        _$PokemonWeaknessTypesInfoImpl>
    implements _$$PokemonWeaknessTypesInfoImplCopyWith<$Res> {
  __$$PokemonWeaknessTypesInfoImplCopyWithImpl(
      _$PokemonWeaknessTypesInfoImpl _value,
      $Res Function(_$PokemonWeaknessTypesInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weaknesses = null,
    Object? strengths = null,
    Object? effectiveness = null,
  }) {
    return _then(_$PokemonWeaknessTypesInfoImpl(
      weaknesses: null == weaknesses
          ? _value._weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      strengths: null == strengths
          ? _value._strengths
          : strengths // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      effectiveness: null == effectiveness
          ? _value._effectiveness
          : effectiveness // ignore: cast_nullable_to_non_nullable
              as Map<PokemonType, double>,
    ));
  }
}

/// @nodoc

class _$PokemonWeaknessTypesInfoImpl implements _PokemonWeaknessTypesInfo {
  const _$PokemonWeaknessTypesInfoImpl(
      {required final List<PokemonType> weaknesses,
      required final List<PokemonType> strengths,
      required final Map<PokemonType, double> effectiveness})
      : _weaknesses = weaknesses,
        _strengths = strengths,
        _effectiveness = effectiveness;

  final List<PokemonType> _weaknesses;
  @override
  List<PokemonType> get weaknesses {
    if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaknesses);
  }

  final List<PokemonType> _strengths;
  @override
  List<PokemonType> get strengths {
    if (_strengths is EqualUnmodifiableListView) return _strengths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strengths);
  }

  final Map<PokemonType, double> _effectiveness;
  @override
  Map<PokemonType, double> get effectiveness {
    if (_effectiveness is EqualUnmodifiableMapView) return _effectiveness;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_effectiveness);
  }

  @override
  String toString() {
    return 'PokemonWeaknessTypesInfo(weaknesses: $weaknesses, strengths: $strengths, effectiveness: $effectiveness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonWeaknessTypesInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._weaknesses, _weaknesses) &&
            const DeepCollectionEquality()
                .equals(other._strengths, _strengths) &&
            const DeepCollectionEquality()
                .equals(other._effectiveness, _effectiveness));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weaknesses),
      const DeepCollectionEquality().hash(_strengths),
      const DeepCollectionEquality().hash(_effectiveness));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonWeaknessTypesInfoImplCopyWith<_$PokemonWeaknessTypesInfoImpl>
      get copyWith => __$$PokemonWeaknessTypesInfoImplCopyWithImpl<
          _$PokemonWeaknessTypesInfoImpl>(this, _$identity);
}

abstract class _PokemonWeaknessTypesInfo implements PokemonWeaknessTypesInfo {
  const factory _PokemonWeaknessTypesInfo(
          {required final List<PokemonType> weaknesses,
          required final List<PokemonType> strengths,
          required final Map<PokemonType, double> effectiveness}) =
      _$PokemonWeaknessTypesInfoImpl;

  @override
  List<PokemonType> get weaknesses;
  @override
  List<PokemonType> get strengths;
  @override
  Map<PokemonType, double> get effectiveness;
  @override
  @JsonKey(ignore: true)
  _$$PokemonWeaknessTypesInfoImplCopyWith<_$PokemonWeaknessTypesInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
