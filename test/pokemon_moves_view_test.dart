import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/pokemon_move_detail_repository.dart';
import 'package:pokedex/domain/model/pokemon_info.dart';
import 'package:pokedex/domain/model/pokemon_move_detail_info.dart';
import 'package:pokedex/presentation/components/pokemon_moves_view.dart';

void main() {
  testWidgets('preloads move details without showing a loading indicator',
      (tester) async {
    final detailCompleter = Completer<PokemonMoveDetailInfo>();
    var preloadStarted = false;

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          pokemonMoveDetailInfoProvider('tackle').overrideWith((ref) {
            preloadStarted = true;
            return detailCompleter.future;
          }),
        ],
        child: const MaterialApp(
          home: Scaffold(
            body: PokemonMovesView(
              levelUpMoves: [
                PokemonMoveInfo(
                  name: 'tackle',
                  learnMethod: 'level-up',
                  levelLearnedAt: 1,
                  versionGroup: 'scarlet-violet',
                ),
              ],
              machineMoves: [],
              eggMoves: [],
            ),
          ),
        ),
      ),
    );

    expect(preloadStarted, isTrue);
    await tester.tap(find.text('Level-up Moves'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Tackle'));
    await tester.pump();

    expect(find.byType(CircularProgressIndicator), findsNothing);

    detailCompleter.complete(
      const PokemonMoveDetailInfo(
        name: 'tackle',
        type: 'normal',
        category: 'physical',
        power: 40,
        accuracy: 100,
        pp: 35,
        description: 'A physical attack.',
        shortEffect: 'Inflicts regular damage.',
        effect: 'Inflicts regular damage with no additional effect.',
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Physical'), findsOneWidget);
    expect(find.text('A physical attack.'), findsOneWidget);
  });

  testWidgets('shows move category, stats, description, and effect',
      (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          pokemonMoveDetailInfoProvider('tackle').overrideWith(
            (ref) async => const PokemonMoveDetailInfo(
              name: 'tackle',
              type: 'normal',
              category: 'physical',
              power: 40,
              accuracy: 100,
              pp: 35,
              description: 'A physical attack.',
              shortEffect: 'Inflicts regular damage.',
              effect: 'Inflicts regular damage with no additional effect.',
            ),
          ),
          pokemonMoveDetailInfoProvider('thunder').overrideWith(
            (ref) async => const PokemonMoveDetailInfo(
              name: 'thunder',
              type: 'electric',
              category: 'special',
              power: 110,
              accuracy: 70,
              pp: 10,
              description: 'A special attack.',
              shortEffect: 'May paralyze the target.',
              effect: 'May paralyze the target.',
            ),
          ),
          pokemonMoveDetailInfoProvider('growl').overrideWith(
            (ref) async => const PokemonMoveDetailInfo(
              name: 'growl',
              type: 'normal',
              category: 'status',
              power: null,
              accuracy: 100,
              pp: 40,
              description: 'Lowers the target’s Attack.',
              shortEffect: 'Lowers the target’s Attack.',
              effect: 'Lowers the target’s Attack.',
            ),
          ),
        ],
        child: const MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: PokemonMovesView(
                levelUpMoves: [
                  PokemonMoveInfo(
                    name: 'tackle',
                    learnMethod: 'level-up',
                    levelLearnedAt: 1,
                    versionGroup: 'scarlet-violet',
                  ),
                  PokemonMoveInfo(
                    name: 'thunder',
                    learnMethod: 'level-up',
                    levelLearnedAt: 2,
                    versionGroup: 'scarlet-violet',
                  ),
                  PokemonMoveInfo(
                    name: 'growl',
                    learnMethod: 'level-up',
                    levelLearnedAt: 3,
                    versionGroup: 'scarlet-violet',
                  ),
                ],
                machineMoves: [],
                eggMoves: [],
              ),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Level-up Moves'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Tackle'));
    await tester.pumpAndSettle();

    expect(find.text('Physical'), findsOneWidget);
    expect(find.byIcon(Icons.sports_martial_arts), findsOneWidget);
    expect(find.text('Type: Normal'), findsOneWidget);
    expect(find.text('Power'), findsOneWidget);
    expect(find.text('40'), findsOneWidget);
    expect(find.text('100%'), findsOneWidget);
    expect(find.text('35'), findsOneWidget);
    expect(find.text('A physical attack.'), findsOneWidget);
    expect(find.text('Inflicts regular damage.'), findsOneWidget);
    expect(
      find.text('Inflicts regular damage with no additional effect.'),
      findsOneWidget,
    );

    await tester.ensureVisible(find.text('Thunder'));
    await tester.tap(find.text('Thunder'));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.auto_awesome), findsOneWidget);
    expect(find.text('Special'), findsOneWidget);

    await tester.ensureVisible(find.text('Growl'));
    await tester.tap(find.text('Growl'));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.circle_outlined), findsOneWidget);
    expect(find.text('Status'), findsOneWidget);
  });
}
