import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/pokemon_weakness_types_info_repository.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

class PokemonTypeEffectivenessView extends ConsumerWidget {
  const PokemonTypeEffectivenessView({
    super.key,
    required this.types,
  });

  final List<PokemonType> types;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final typeNames = types.map((type) => type.name).join(',');
    final matchups = ref.watch(pokemonWeaknessTypesInfoProvider(typeNames));

    return matchups.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text(
        'Could not load type matchups: $error',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      data: (info) {
        const multipliers = [4.0, 2.0, 1.0, 0.5, 0.25, 0.0];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Damage this Pokémon takes from each attack type.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color.fromRGBO(0, 0, 0, 0.65),
                  ),
            ),
            const Gap(16),
            ...multipliers.map((multiplier) {
              final group = info.effectiveness.entries
                  .where((entry) => entry.value == multiplier)
                  .map((entry) => entry.key)
                  .toList();
              if (group.isEmpty) {
                return const SizedBox.shrink();
              }
              return Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${_formatMultiplier(multiplier)} damage',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const Gap(8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: group
                          .map(
                            (type) => _TypeMultiplierChip(
                              type: type,
                              multiplier: _formatMultiplier(multiplier),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              );
            }),
          ],
        );
      },
    );
  }

  String _formatMultiplier(double multiplier) {
    return switch (multiplier) {
      4 => '4x',
      2 => '2x',
      1 => '1x',
      0.5 => '1/2x',
      0.25 => '1/4x',
      0 => '0x',
      _ => '${multiplier}x',
    };
  }
}

class _TypeMultiplierChip extends StatelessWidget {
  const _TypeMultiplierChip({
    required this.type,
    required this.multiplier,
  });

  final PokemonType type;
  final String multiplier;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: type.color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            type.label,
            style: TextStyle(
              color: type.labelColorOnSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(8),
          Text(
            multiplier,
            style: TextStyle(
              color: type.labelColorOnSurface,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
