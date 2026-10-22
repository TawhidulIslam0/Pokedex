import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

part 'pokemon_info.freezed.dart';

@freezed
class PokemonInfo with _$PokemonInfo {
  factory PokemonInfo({
    required int pokedexId,
    required String name,
    required String speciesName,
    required String imageUrl,
    required String shinyImageUrl,
    required List<PokemonType> types,
    required double height,
    required double weight,
    required List<String> abilities,
    required List<PokemonBaseStatInfo> baseStats,
    required List<PokemonMoveInfo> moves,
  }) = _PokemonInfo;
}

class PokemonBaseStatInfo {
  const PokemonBaseStatInfo({required this.name, required this.value});

  final String name;
  final int value;
}

class PokemonMoveInfo {
  const PokemonMoveInfo({
    required this.name,
    required this.learnMethod,
    required this.levelLearnedAt,
    required this.versionGroup,
  });

  final String name;
  final String learnMethod;
  final int levelLearnedAt;
  final String versionGroup;
}

class PokemonFormInfo {
  const PokemonFormInfo({
    required this.name,
    required this.imageUrl,
    required this.shinyImageUrl,
    required this.types,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.baseStats,
  });

  final String name;
  final String imageUrl;
  final String shinyImageUrl;
  final List<PokemonType> types;
  final double height;
  final double weight;
  final List<String> abilities;
  final List<PokemonBaseStatInfo> baseStats;
}

class PokemonFormOption {
  const PokemonFormOption({
    required this.name,
    required this.isMega,
  });

  final String name;
  final bool isMega;
}
