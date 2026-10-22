import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/pokemon_move_detail_repository.dart';
import 'package:pokedex/domain/model/pokemon_info.dart';
import 'package:pokedex/domain/model/pokemon_move_detail_info.dart';

class PokemonMovesView extends ConsumerStatefulWidget {
  const PokemonMovesView({
    super.key,
    required this.levelUpMoves,
    required this.machineMoves,
    required this.eggMoves,
  });

  final List<PokemonMoveInfo> levelUpMoves;
  final List<PokemonMoveInfo> machineMoves;
  final List<PokemonMoveInfo> eggMoves;

  @override
  ConsumerState<PokemonMovesView> createState() => _PokemonMovesViewState();
}

class _PokemonMovesViewState extends ConsumerState<PokemonMovesView> {
  static const _preloadBatchSize = 4;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        unawaited(_preloadMoveDetails());
      }
    });
  }

  Future<void> _preloadMoveDetails() async {
    final moveNames = {
      ...widget.levelUpMoves.map((move) => move.name),
      ...widget.machineMoves.map((move) => move.name),
      ...widget.eggMoves.map((move) => move.name),
    }.toList();

    for (var index = 0; index < moveNames.length; index += _preloadBatchSize) {
      if (!mounted) {
        return;
      }

      final batch = moveNames.skip(index).take(_preloadBatchSize);
      await Future.wait(batch.map(_preloadMoveDetail));
    }
  }

  Future<void> _preloadMoveDetail(String name) async {
    try {
      await ref.read(pokemonMoveDetailInfoProvider(name).future);
    } catch (error, stackTrace) {
      debugPrint('Could not preload move details for $name: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _MoveGroup(
          title: 'Level-up Moves',
          moves: widget.levelUpMoves,
          showLevel: true,
        ),
        _MoveGroup(
          title: 'TM Moves',
          moves: widget.machineMoves,
        ),
        _MoveGroup(
          title: 'Egg Moves',
          moves: widget.eggMoves,
        ),
      ],
    );
  }
}

class _MoveGroup extends StatelessWidget {
  const _MoveGroup({
    required this.title,
    required this.moves,
    this.showLevel = false,
  });

  final String title;
  final List<PokemonMoveInfo> moves;
  final bool showLevel;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      childrenPadding: const EdgeInsets.only(bottom: 8),
      title: Text(title),
      subtitle: moves.isEmpty
          ? null
          : Text('Game: ${_formatName(moves.first.versionGroup)}'),
      trailing: Text('${moves.length}'),
      children: [
        if (moves.isEmpty)
          const ListTile(
            dense: true,
            title: Text('No moves listed for the latest supported games.'),
          )
        else
          ...moves.map(
            (move) => _MoveListTile(
              move: move,
              showLevel: showLevel,
            ),
          ),
      ],
    );
  }

  String _formatName(String value) {
    return value
        .split('-')
        .map((word) => word.isEmpty
            ? word
            : '${word[0].toUpperCase()}${word.substring(1)}')
        .join(' ');
  }
}

class _MoveListTile extends ConsumerStatefulWidget {
  const _MoveListTile({
    required this.move,
    required this.showLevel,
  });

  final PokemonMoveInfo move;
  final bool showLevel;

  @override
  ConsumerState<_MoveListTile> createState() => _MoveListTileState();
}

class _MoveListTileState extends ConsumerState<_MoveListTile> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final move = widget.move;
    final moveName = _formatName(move.name);

    return Column(
      children: [
        ListTile(
          dense: true,
          contentPadding: EdgeInsets.zero,
          title: Text(moveName),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.showLevel)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    move.levelLearnedAt == 0
                        ? 'Learned'
                        : 'Lv. ${move.levelLearnedAt}',
                  ),
                ),
              Icon(_expanded ? Icons.expand_less : Icons.expand_more),
            ],
          ),
          onTap: () => setState(() => _expanded = !_expanded),
        ),
        if (_expanded)
          ref.watch(pokemonMoveDetailInfoProvider(move.name)).when(
                loading: () => const SizedBox.shrink(),
                error: (error, stackTrace) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Could not load details for $moveName: $error'),
                      TextButton(
                        onPressed: () => ref.invalidate(
                          pokemonMoveDetailInfoProvider(move.name),
                        ),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
                data: (detail) => _MoveDetailsPanel(detail: detail),
              ),
      ],
    );
  }

  String _formatName(String value) {
    return value
        .split('-')
        .map((word) => word.isEmpty
            ? word
            : '${word[0].toUpperCase()}${word.substring(1)}')
        .join(' ');
  }
}

class _MoveDetailsPanel extends StatelessWidget {
  const _MoveDetailsPanel({required this.detail});

  final PokemonMoveDetailInfo detail;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 0, 0, 0.04),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _MoveCategoryLabel(category: detail.category),
              _MoveLabel(label: 'Type: ${_formatName(detail.type)}'),
            ],
          ),
          const Gap(12),
          Row(
            children: [
              _MoveStat(label: 'Power', value: detail.power?.toString() ?? '—'),
              _MoveStat(
                label: 'Accuracy',
                value: detail.accuracy == null ? '—' : '${detail.accuracy}%',
              ),
              _MoveStat(label: 'PP', value: detail.pp?.toString() ?? '—'),
            ],
          ),
          const Gap(12),
          _DetailText(
            label: 'Description',
            value: detail.description,
            textTheme: textTheme,
          ),
          const Gap(8),
          _DetailText(
            label: 'Effect',
            value: detail.shortEffect ?? detail.effect,
            textTheme: textTheme,
          ),
          if (detail.effect != null && detail.shortEffect != null) ...[
            const Gap(8),
            _DetailText(
              label: 'Effect details',
              value: detail.effect,
              textTheme: textTheme,
            ),
          ],
        ],
      ),
    );
  }

  String _formatName(String value) {
    return value
        .split('-')
        .map((word) => word.isEmpty
            ? word
            : '${word[0].toUpperCase()}${word.substring(1)}')
        .join(' ');
  }
}

class _MoveCategoryLabel extends StatelessWidget {
  const _MoveCategoryLabel({required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    final (icon, color) = switch (category) {
      'physical' => (Icons.sports_martial_arts, const Color(0xFFCF4B4B)),
      'special' => (Icons.auto_awesome, const Color(0xFF5476C8)),
      'status' => (Icons.circle_outlined, const Color(0xFF737982)),
      _ => (Icons.help_outline, const Color(0xFF737982)),
    };
    final label = _formatName(category);

    return Tooltip(
      message: '$label move',
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 17, color: color),
            const Gap(5),
            Text(
              label,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatName(String value) {
    return value
        .split('-')
        .map((word) => word.isEmpty
            ? word
            : '${word[0].toUpperCase()}${word.substring(1)}')
        .join(' ');
  }
}

class _MoveLabel extends StatelessWidget {
  const _MoveLabel({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}

class _MoveStat extends StatelessWidget {
  const _MoveStat({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.labelMedium),
          const Gap(2),
          Text(
            value,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}

class _DetailText extends StatelessWidget {
  const _DetailText({
    required this.label,
    required this.value,
    required this.textTheme,
  });

  final String label;
  final String? value;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: textTheme.labelLarge),
        const Gap(2),
        Text(
          value ?? 'Not available.',
          style: textTheme.bodyMedium?.copyWith(color: Colors.black87),
        ),
      ],
    );
  }
}
