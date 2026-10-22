import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_info.dart';

class PokemonBaseStatsView extends StatelessWidget {
  const PokemonBaseStatsView({
    super.key,
    required this.stats,
  });

  final List<PokemonBaseStatInfo> stats;

  static const _labels = {
    'hp': 'HP',
    'attack': 'Attack',
    'defense': 'Defense',
    'special-attack': 'Sp. Atk',
    'special-defense': 'Sp. Def',
    'speed': 'Speed',
  };

  @override
  Widget build(BuildContext context) {
    final total = stats.fold<int>(0, (sum, stat) => sum + stat.value);

    return Column(
      children: [
        ...stats.map((stat) {
          final label = _labels[stat.name] ?? stat.name;
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 76,
                  child: Text(
                    label,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                SizedBox(
                  width: 34,
                  child: Text(
                    '${stat.value}',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const Gap(12),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      minHeight: 8,
                      value: (stat.value / 255).clamp(0.0, 1.0),
                      backgroundColor: Colors.black.withValues(alpha: 0.08),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
        const Divider(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                'Total',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              '$total',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
