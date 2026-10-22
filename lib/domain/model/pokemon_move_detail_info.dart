class PokemonMoveDetailInfo {
  const PokemonMoveDetailInfo({
    required this.name,
    required this.type,
    required this.category,
    required this.power,
    required this.accuracy,
    required this.pp,
    required this.description,
    required this.shortEffect,
    required this.effect,
  });

  final String name;
  final String type;
  final String category;
  final int? power;
  final int? accuracy;
  final int? pp;
  final String? description;
  final String? shortEffect;
  final String? effect;
}
