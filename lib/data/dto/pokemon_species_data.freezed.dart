// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpeciesData _$PokemonSpeciesDataFromJson(Map<String, dynamic> json) {
  return _PokemonSpeciesData.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesData {
  @JsonKey(name: 'gender_rate')
  int get genderRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntry> get flavorTextEntries =>
      throw _privateConstructorUsedError;
  List<GeneraData> get genera => throw _privateConstructorUsedError;
  @JsonKey(name: 'evolution_chain')
  UrlData get evolutionChain => throw _privateConstructorUsedError;
  List<PokemonSpeciesVarietyData> get varieties =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesDataCopyWith<PokemonSpeciesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesDataCopyWith<$Res> {
  factory $PokemonSpeciesDataCopyWith(
          PokemonSpeciesData value, $Res Function(PokemonSpeciesData) then) =
      _$PokemonSpeciesDataCopyWithImpl<$Res, PokemonSpeciesData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'gender_rate') int genderRate,
      @JsonKey(name: 'flavor_text_entries')
      List<FlavorTextEntry> flavorTextEntries,
      List<GeneraData> genera,
      @JsonKey(name: 'evolution_chain') UrlData evolutionChain,
      List<PokemonSpeciesVarietyData> varieties});

  $UrlDataCopyWith<$Res> get evolutionChain;
}

/// @nodoc
class _$PokemonSpeciesDataCopyWithImpl<$Res, $Val extends PokemonSpeciesData>
    implements $PokemonSpeciesDataCopyWith<$Res> {
  _$PokemonSpeciesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderRate = null,
    Object? flavorTextEntries = null,
    Object? genera = null,
    Object? evolutionChain = null,
    Object? varieties = null,
  }) {
    return _then(_value.copyWith(
      genderRate: null == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      flavorTextEntries: null == flavorTextEntries
          ? _value.flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntry>,
      genera: null == genera
          ? _value.genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GeneraData>,
      evolutionChain: null == evolutionChain
          ? _value.evolutionChain
          : evolutionChain // ignore: cast_nullable_to_non_nullable
              as UrlData,
      varieties: null == varieties
          ? _value.varieties
          : varieties // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesVarietyData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlDataCopyWith<$Res> get evolutionChain {
    return $UrlDataCopyWith<$Res>(_value.evolutionChain, (value) {
      return _then(_value.copyWith(evolutionChain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesDataImplCopyWith<$Res>
    implements $PokemonSpeciesDataCopyWith<$Res> {
  factory _$$PokemonSpeciesDataImplCopyWith(_$PokemonSpeciesDataImpl value,
          $Res Function(_$PokemonSpeciesDataImpl) then) =
      __$$PokemonSpeciesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gender_rate') int genderRate,
      @JsonKey(name: 'flavor_text_entries')
      List<FlavorTextEntry> flavorTextEntries,
      List<GeneraData> genera,
      @JsonKey(name: 'evolution_chain') UrlData evolutionChain,
      List<PokemonSpeciesVarietyData> varieties});

  @override
  $UrlDataCopyWith<$Res> get evolutionChain;
}

/// @nodoc
class __$$PokemonSpeciesDataImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesDataCopyWithImpl<$Res, _$PokemonSpeciesDataImpl>
    implements _$$PokemonSpeciesDataImplCopyWith<$Res> {
  __$$PokemonSpeciesDataImplCopyWithImpl(_$PokemonSpeciesDataImpl _value,
      $Res Function(_$PokemonSpeciesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderRate = null,
    Object? flavorTextEntries = null,
    Object? genera = null,
    Object? evolutionChain = null,
    Object? varieties = null,
  }) {
    return _then(_$PokemonSpeciesDataImpl(
      genderRate: null == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      flavorTextEntries: null == flavorTextEntries
          ? _value._flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntry>,
      genera: null == genera
          ? _value._genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GeneraData>,
      evolutionChain: null == evolutionChain
          ? _value.evolutionChain
          : evolutionChain // ignore: cast_nullable_to_non_nullable
              as UrlData,
      varieties: null == varieties
          ? _value._varieties
          : varieties // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesVarietyData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesDataImpl implements _PokemonSpeciesData {
  const _$PokemonSpeciesDataImpl(
      {@JsonKey(name: 'gender_rate') required this.genderRate,
      @JsonKey(name: 'flavor_text_entries')
      required final List<FlavorTextEntry> flavorTextEntries,
      required final List<GeneraData> genera,
      @JsonKey(name: 'evolution_chain') required this.evolutionChain,
      final List<PokemonSpeciesVarietyData> varieties = const []})
      : _flavorTextEntries = flavorTextEntries,
        _genera = genera,
        _varieties = varieties;

  factory _$PokemonSpeciesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesDataImplFromJson(json);

  @override
  @JsonKey(name: 'gender_rate')
  final int genderRate;
  final List<FlavorTextEntry> _flavorTextEntries;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntry> get flavorTextEntries {
    if (_flavorTextEntries is EqualUnmodifiableListView)
      return _flavorTextEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flavorTextEntries);
  }

  final List<GeneraData> _genera;
  @override
  List<GeneraData> get genera {
    if (_genera is EqualUnmodifiableListView) return _genera;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genera);
  }

  @override
  @JsonKey(name: 'evolution_chain')
  final UrlData evolutionChain;
  final List<PokemonSpeciesVarietyData> _varieties;
  @override
  @JsonKey()
  List<PokemonSpeciesVarietyData> get varieties {
    if (_varieties is EqualUnmodifiableListView) return _varieties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_varieties);
  }

  @override
  String toString() {
    return 'PokemonSpeciesData(genderRate: $genderRate, flavorTextEntries: $flavorTextEntries, genera: $genera, evolutionChain: $evolutionChain, varieties: $varieties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesDataImpl &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate) &&
            const DeepCollectionEquality()
                .equals(other._flavorTextEntries, _flavorTextEntries) &&
            const DeepCollectionEquality().equals(other._genera, _genera) &&
            (identical(other.evolutionChain, evolutionChain) ||
                other.evolutionChain == evolutionChain) &&
            const DeepCollectionEquality()
                .equals(other._varieties, _varieties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      genderRate,
      const DeepCollectionEquality().hash(_flavorTextEntries),
      const DeepCollectionEquality().hash(_genera),
      evolutionChain,
      const DeepCollectionEquality().hash(_varieties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesDataImplCopyWith<_$PokemonSpeciesDataImpl> get copyWith =>
      __$$PokemonSpeciesDataImplCopyWithImpl<_$PokemonSpeciesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesData implements PokemonSpeciesData {
  const factory _PokemonSpeciesData(
      {@JsonKey(name: 'gender_rate') required final int genderRate,
      @JsonKey(name: 'flavor_text_entries')
      required final List<FlavorTextEntry> flavorTextEntries,
      required final List<GeneraData> genera,
      @JsonKey(name: 'evolution_chain') required final UrlData evolutionChain,
      final List<PokemonSpeciesVarietyData>
          varieties}) = _$PokemonSpeciesDataImpl;

  factory _PokemonSpeciesData.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesDataImpl.fromJson;

  @override
  @JsonKey(name: 'gender_rate')
  int get genderRate;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntry> get flavorTextEntries;
  @override
  List<GeneraData> get genera;
  @override
  @JsonKey(name: 'evolution_chain')
  UrlData get evolutionChain;
  @override
  List<PokemonSpeciesVarietyData> get varieties;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpeciesDataImplCopyWith<_$PokemonSpeciesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpeciesVarietyData _$PokemonSpeciesVarietyDataFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpeciesVarietyData.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesVarietyData {
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  NameUrlData get pokemon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesVarietyDataCopyWith<PokemonSpeciesVarietyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesVarietyDataCopyWith<$Res> {
  factory $PokemonSpeciesVarietyDataCopyWith(PokemonSpeciesVarietyData value,
          $Res Function(PokemonSpeciesVarietyData) then) =
      _$PokemonSpeciesVarietyDataCopyWithImpl<$Res, PokemonSpeciesVarietyData>;
  @useResult
  $Res call({@JsonKey(name: 'is_default') bool isDefault, NameUrlData pokemon});

  $NameUrlDataCopyWith<$Res> get pokemon;
}

/// @nodoc
class _$PokemonSpeciesVarietyDataCopyWithImpl<$Res,
        $Val extends PokemonSpeciesVarietyData>
    implements $PokemonSpeciesVarietyDataCopyWith<$Res> {
  _$PokemonSpeciesVarietyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefault = null,
    Object? pokemon = null,
  }) {
    return _then(_value.copyWith(
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get pokemon {
    return $NameUrlDataCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesVarietyDataImplCopyWith<$Res>
    implements $PokemonSpeciesVarietyDataCopyWith<$Res> {
  factory _$$PokemonSpeciesVarietyDataImplCopyWith(
          _$PokemonSpeciesVarietyDataImpl value,
          $Res Function(_$PokemonSpeciesVarietyDataImpl) then) =
      __$$PokemonSpeciesVarietyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'is_default') bool isDefault, NameUrlData pokemon});

  @override
  $NameUrlDataCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$$PokemonSpeciesVarietyDataImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesVarietyDataCopyWithImpl<$Res,
        _$PokemonSpeciesVarietyDataImpl>
    implements _$$PokemonSpeciesVarietyDataImplCopyWith<$Res> {
  __$$PokemonSpeciesVarietyDataImplCopyWithImpl(
      _$PokemonSpeciesVarietyDataImpl _value,
      $Res Function(_$PokemonSpeciesVarietyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefault = null,
    Object? pokemon = null,
  }) {
    return _then(_$PokemonSpeciesVarietyDataImpl(
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesVarietyDataImpl implements _PokemonSpeciesVarietyData {
  const _$PokemonSpeciesVarietyDataImpl(
      {@JsonKey(name: 'is_default') required this.isDefault,
      required this.pokemon});

  factory _$PokemonSpeciesVarietyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesVarietyDataImplFromJson(json);

  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  final NameUrlData pokemon;

  @override
  String toString() {
    return 'PokemonSpeciesVarietyData(isDefault: $isDefault, pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesVarietyDataImpl &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDefault, pokemon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesVarietyDataImplCopyWith<_$PokemonSpeciesVarietyDataImpl>
      get copyWith => __$$PokemonSpeciesVarietyDataImplCopyWithImpl<
          _$PokemonSpeciesVarietyDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesVarietyDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesVarietyData implements PokemonSpeciesVarietyData {
  const factory _PokemonSpeciesVarietyData(
      {@JsonKey(name: 'is_default') required final bool isDefault,
      required final NameUrlData pokemon}) = _$PokemonSpeciesVarietyDataImpl;

  factory _PokemonSpeciesVarietyData.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesVarietyDataImpl.fromJson;

  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  NameUrlData get pokemon;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpeciesVarietyDataImplCopyWith<_$PokemonSpeciesVarietyDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FlavorTextEntry _$FlavorTextEntryFromJson(Map<String, dynamic> json) {
  return _FlavorTextEntry.fromJson(json);
}

/// @nodoc
mixin _$FlavorTextEntry {
  @JsonKey(name: 'flavor_text')
  String get flavorText => throw _privateConstructorUsedError;
  NameUrlData get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorTextEntryCopyWith<FlavorTextEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorTextEntryCopyWith<$Res> {
  factory $FlavorTextEntryCopyWith(
          FlavorTextEntry value, $Res Function(FlavorTextEntry) then) =
      _$FlavorTextEntryCopyWithImpl<$Res, FlavorTextEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText, NameUrlData language});

  $NameUrlDataCopyWith<$Res> get language;
}

/// @nodoc
class _$FlavorTextEntryCopyWithImpl<$Res, $Val extends FlavorTextEntry>
    implements $FlavorTextEntryCopyWith<$Res> {
  _$FlavorTextEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get language {
    return $NameUrlDataCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlavorTextEntryImplCopyWith<$Res>
    implements $FlavorTextEntryCopyWith<$Res> {
  factory _$$FlavorTextEntryImplCopyWith(_$FlavorTextEntryImpl value,
          $Res Function(_$FlavorTextEntryImpl) then) =
      __$$FlavorTextEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText, NameUrlData language});

  @override
  $NameUrlDataCopyWith<$Res> get language;
}

/// @nodoc
class __$$FlavorTextEntryImplCopyWithImpl<$Res>
    extends _$FlavorTextEntryCopyWithImpl<$Res, _$FlavorTextEntryImpl>
    implements _$$FlavorTextEntryImplCopyWith<$Res> {
  __$$FlavorTextEntryImplCopyWithImpl(
      _$FlavorTextEntryImpl _value, $Res Function(_$FlavorTextEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
  }) {
    return _then(_$FlavorTextEntryImpl(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlavorTextEntryImpl implements _FlavorTextEntry {
  _$FlavorTextEntryImpl(
      {@JsonKey(name: 'flavor_text') required this.flavorText,
      required this.language});

  factory _$FlavorTextEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorTextEntryImplFromJson(json);

  @override
  @JsonKey(name: 'flavor_text')
  final String flavorText;
  @override
  final NameUrlData language;

  @override
  String toString() {
    return 'FlavorTextEntry(flavorText: $flavorText, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorTextEntryImpl &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorTextEntryImplCopyWith<_$FlavorTextEntryImpl> get copyWith =>
      __$$FlavorTextEntryImplCopyWithImpl<_$FlavorTextEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorTextEntryImplToJson(
      this,
    );
  }
}

abstract class _FlavorTextEntry implements FlavorTextEntry {
  factory _FlavorTextEntry(
      {@JsonKey(name: 'flavor_text') required final String flavorText,
      required final NameUrlData language}) = _$FlavorTextEntryImpl;

  factory _FlavorTextEntry.fromJson(Map<String, dynamic> json) =
      _$FlavorTextEntryImpl.fromJson;

  @override
  @JsonKey(name: 'flavor_text')
  String get flavorText;
  @override
  NameUrlData get language;
  @override
  @JsonKey(ignore: true)
  _$$FlavorTextEntryImplCopyWith<_$FlavorTextEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeneraData _$GeneraDataFromJson(Map<String, dynamic> json) {
  return _GeneraData.fromJson(json);
}

/// @nodoc
mixin _$GeneraData {
  String get genus => throw _privateConstructorUsedError;
  NameUrlData get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneraDataCopyWith<GeneraData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneraDataCopyWith<$Res> {
  factory $GeneraDataCopyWith(
          GeneraData value, $Res Function(GeneraData) then) =
      _$GeneraDataCopyWithImpl<$Res, GeneraData>;
  @useResult
  $Res call({String genus, NameUrlData language});

  $NameUrlDataCopyWith<$Res> get language;
}

/// @nodoc
class _$GeneraDataCopyWithImpl<$Res, $Val extends GeneraData>
    implements $GeneraDataCopyWith<$Res> {
  _$GeneraDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get language {
    return $NameUrlDataCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeneraDataImplCopyWith<$Res>
    implements $GeneraDataCopyWith<$Res> {
  factory _$$GeneraDataImplCopyWith(
          _$GeneraDataImpl value, $Res Function(_$GeneraDataImpl) then) =
      __$$GeneraDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String genus, NameUrlData language});

  @override
  $NameUrlDataCopyWith<$Res> get language;
}

/// @nodoc
class __$$GeneraDataImplCopyWithImpl<$Res>
    extends _$GeneraDataCopyWithImpl<$Res, _$GeneraDataImpl>
    implements _$$GeneraDataImplCopyWith<$Res> {
  __$$GeneraDataImplCopyWithImpl(
      _$GeneraDataImpl _value, $Res Function(_$GeneraDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_$GeneraDataImpl(
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneraDataImpl implements _GeneraData {
  _$GeneraDataImpl({required this.genus, required this.language});

  factory _$GeneraDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneraDataImplFromJson(json);

  @override
  final String genus;
  @override
  final NameUrlData language;

  @override
  String toString() {
    return 'GeneraData(genus: $genus, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneraDataImpl &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, genus, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneraDataImplCopyWith<_$GeneraDataImpl> get copyWith =>
      __$$GeneraDataImplCopyWithImpl<_$GeneraDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneraDataImplToJson(
      this,
    );
  }
}

abstract class _GeneraData implements GeneraData {
  factory _GeneraData(
      {required final String genus,
      required final NameUrlData language}) = _$GeneraDataImpl;

  factory _GeneraData.fromJson(Map<String, dynamic> json) =
      _$GeneraDataImpl.fromJson;

  @override
  String get genus;
  @override
  NameUrlData get language;
  @override
  @JsonKey(ignore: true)
  _$$GeneraDataImplCopyWith<_$GeneraDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
