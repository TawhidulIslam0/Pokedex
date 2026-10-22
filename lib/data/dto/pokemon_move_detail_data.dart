class PokemonMoveDetailData {
  const PokemonMoveDetailData({
    required this.name,
    required this.type,
    required this.damageClass,
    required this.power,
    required this.accuracy,
    required this.pp,
    required this.effectChance,
    required this.description,
    required this.shortEffect,
    required this.effect,
  });

  final String name;
  final String type;
  final String damageClass;
  final int? power;
  final int? accuracy;
  final int? pp;
  final int? effectChance;
  final String? description;
  final String? shortEffect;
  final String? effect;

  factory PokemonMoveDetailData.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as Map<String, dynamic>;
    final damageClass = json['damage_class'] as Map<String, dynamic>;
    final effectChance = json['effect_chance'] as int?;
    final effectEntry = _englishEntry(json['effect_entries']);
    final flavorEntry = _englishEntry(json['flavor_text_entries']);

    return PokemonMoveDetailData(
      name: json['name'] as String,
      type: type['name'] as String,
      damageClass: damageClass['name'] as String,
      power: json['power'] as int?,
      accuracy: json['accuracy'] as int?,
      pp: json['pp'] as int?,
      effectChance: effectChance,
      description: _cleanText(flavorEntry?['flavor_text'] as String?),
      shortEffect: _withEffectChance(
        effectEntry?['short_effect'] as String?,
        effectChance,
      ),
      effect: _withEffectChance(
        effectEntry?['effect'] as String?,
        effectChance,
      ),
    );
  }

  static Map<String, dynamic>? _englishEntry(Object? entries) {
    if (entries is! List) {
      return null;
    }

    for (final entry in entries) {
      if (entry is Map<String, dynamic> &&
          (entry['language'] as Map<String, dynamic>?)?['name'] == 'en') {
        return entry;
      }
    }
    return null;
  }

  static String? _cleanText(String? value) {
    return value?.replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  static String? _withEffectChance(String? value, int? chance) {
    if (value == null) {
      return null;
    }
    return _cleanText(
      chance == null ? value : value.replaceAll(r'$effect_chance', '$chance'),
    );
  }
}
