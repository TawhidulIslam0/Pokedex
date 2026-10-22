// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/domain/model/pokemon_detail_info.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/components/pokemon_base_stats_view.dart';
import 'package:pokedex/presentation/components/pokemon_evolution_info_view.dart';
import 'package:pokedex/presentation/components/pokemon_gender_ratio_view.dart';
import 'package:pokedex/presentation/components/pokemon_moves_view.dart';
import 'package:pokedex/presentation/components/pokemon_status_group_view.dart';
import 'package:pokedex/presentation/components/pokemon_type_chip.dart';
import 'package:pokedex/presentation/components/pokemon_type_effectiveness_view.dart';
import 'package:pokedex/data/repository/pokemon_forms_repository.dart';
import 'package:pokedex/data/repository/pokemon_info_repository.dart';
import 'package:pokedex/data/repository/pokemon_weakness_types_info_repository.dart';
import 'package:pokedex/presentation/viewmodel/favorite_button_view_model.dart';
import 'package:pokedex/presentation/viewmodel/pokemon_detail_screen_view_model.dart';
import 'package:pokedex/util/extentions.dart';
import 'package:shimmer/shimmer.dart';

@RoutePage()
class PokemonDetailScreen extends HookConsumerWidget {
  final int pokdexId;

  const PokemonDetailScreen({
    super.key,
    required this.pokdexId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final info = ref.watch(pokemonDetailScreenViewModelProvider(pokdexId)
        .select((value) => value.pokemonDetailInfo));

    return Scaffold(
      body: AnimatedCrossFade(
        firstCurve: Curves.easeIn,
        secondCurve: Curves.easeOut,
        alignment: Alignment.topCenter,
        duration: const Duration(milliseconds: 300),
        firstChild: _Placeholder(),
        secondChild: info != null
            ? _Content(
                info: info,
              )
            : const SizedBox(),
        crossFadeState:
            info == null ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            _DefaultShimmer(
              child: PokemonTypeBackground(
                color: Colors.grey,
              ),
            ),
            Positioned(
              left: 16,
              top: 16 + MediaQuery.of(context).padding.top,
              child: _BackButton(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DefaultShimmer(
                child: Container(
                  height: 48,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Gap(8),
              _DefaultShimmer(
                child: Container(
                  height: 22,
                  width: 68,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Gap(24),
              _DefaultShimmer(
                child: Container(
                  height: 36,
                  width: 124,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(67),
                  ),
                ),
              ),
              Gap(24),
              _DefaultShimmer(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class PokemonTypeBackground extends StatelessWidget {
  final Color color;

  const PokemonTypeBackground({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
        MediaQuery.of(context).size.width,
        330,
      ),
      painter: _PokemonTypeBackgroundPainter(color),
    );
  }
}

class _PokemonTypeBackgroundPainter extends CustomPainter {
  final Color color;

  _PokemonTypeBackgroundPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, 210)
      ..quadraticBezierTo(size.width / 2, 400, size.width, 210)
      ..lineTo(size.width, 0)
      ..close();

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate is _PokemonTypeBackgroundPainter &&
        oldDelegate.color != color;
  }
}

Future<void> _preloadPokemonForms({
  required BuildContext context,
  required WidgetRef ref,
  required PokemonDetailInfo info,
  required bool Function() isActive,
}) async {
  final formOptionsProvider = pokemonAlternateFormsProvider(
    (info.pokedexId, info.name, info.speciesName),
  );

  try {
    await Future.wait([
      _precachePokemonImage(context, info.imageUrl, info.name),
      _precachePokemonImage(context, info.shinyImageUrl, '${info.name} shiny'),
    ]);
    if (!isActive() || !context.mounted) {
      return;
    }

    final forms = await ref.read(formOptionsProvider.future);
    for (var index = 0; index < forms.length; index += 3) {
      if (!isActive() || !context.mounted) {
        return;
      }
      final batch = forms.skip(index).take(3);
      await Future.wait(batch.map((form) async {
        try {
          final formInfo =
              await ref.read(pokemonFormInfoProvider(form.name).future);
          if (!isActive() || !context.mounted) {
            return;
          }
          await Future.wait([
            _precachePokemonImage(context, formInfo.imageUrl, form.name),
            _precachePokemonImage(
              context,
              formInfo.shinyImageUrl,
              '${form.name} shiny',
            ),
          ]);
        } catch (error, stackTrace) {
          debugPrint('Could not preload form ${form.name}: $error');
          debugPrintStack(stackTrace: stackTrace);
        }
      }));
    }
  } catch (error, stackTrace) {
    debugPrint('Could not preload alternate Pokémon forms: $error');
    debugPrintStack(stackTrace: stackTrace);
  }
}

Future<void> _precachePokemonImage(
  BuildContext context,
  String imageUrl,
  String label,
) async {
  try {
    await precacheImage(NetworkImage(imageUrl), context);
  } catch (error, stackTrace) {
    debugPrint('Could not preload artwork for $label: $error');
    debugPrintStack(stackTrace: stackTrace);
  }
}

class _Content extends HookConsumerWidget {
  final PokemonDetailInfo info;

  const _Content({
    required this.info,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      var active = true;
      unawaited(_preloadPokemonForms(
        context: context,
        ref: ref,
        info: info,
        isActive: () => active,
      ));
      return () => active = false;
    }, [info.pokedexId, info.name, info.speciesName]);

    final isShiny = useState(false);
    final selectedFormName = useState<String?>(null);
    final selectedFormState = selectedFormName.value == null
        ? null
        : ref.watch(pokemonFormInfoProvider(selectedFormName.value!));
    final selectedForm = selectedFormState?.maybeWhen(
      data: (form) => form,
      orElse: () => null,
    );
    final displayInfo = selectedForm == null
        ? info
        : info.copyWith(
            name: selectedForm.name,
            imageUrl: selectedForm.imageUrl,
            shinyImageUrl: selectedForm.shinyImageUrl,
            types: selectedForm.types,
            height: selectedForm.height,
            weight: selectedForm.weight,
            abilities: selectedForm.abilities
                .map(
                    (ability) => ability.capitalizeFirst().replaceAll('-', ' '))
                .toList(),
            baseStats: selectedForm.baseStats,
          );
    final matchupTypeNames =
        displayInfo.types.map((type) => type.name).join(',');
    final matchups =
        ref.watch(pokemonWeaknessTypesInfoProvider(matchupTypeNames));
    final name = displayInfo.name.replaceAll('-', ' ').capitalizeFirst();

    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                PokemonTypeBackground(color: displayInfo.mainType.color),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 70,
                  child: SvgPicture.asset(
                    displayInfo.mainType.iconGradientAssetPath,
                    width: 204,
                    height: 204,
                  ),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: _PokemonImage(
                      imageUrl: displayInfo.imageUrl,
                      shinyImageUrl: displayInfo.shinyImageUrl,
                      isShiny: isShiny.value,
                      pokemonName: name,
                      onTap: () => isShiny.value = !isShiny.value,
                    )),
                Positioned(
                  right: 16,
                  bottom: 28,
                  child: _ShinyToggle(
                    isShiny: isShiny.value,
                    onPressed: () => isShiny.value = !isShiny.value,
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 16 + MediaQuery.of(context).padding.top,
                  child: _BackButton(),
                ),
                _FavButton(
                  pokdexId: info.pokedexId,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 18,
                  bottom: 26 + MediaQuery.of(context).padding.bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    info.pokedexId.pokedexIdFormat(),
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: Colors.black.withOpacity(0.7)),
                  ),
                  const Gap(24),
                  Row(
                      children: displayInfo.types
                          .mapIndexed((i, type) => Padding(
                              padding: EdgeInsets.only(left: i == 0 ? 0 : 7),
                              child: PokemonTypeChip.large(type)))
                          .toList()),
                  const Gap(24),
                  OutlinedButton.icon(
                    onPressed: () async {
                      final formName = await showModalBottomSheet<String>(
                        context: context,
                        isScrollControlled: true,
                        builder: (_) => _PokemonFormPicker(
                          pokedexId: info.pokedexId,
                          pokemonName: info.name,
                          speciesName: info.speciesName,
                          selectedFormName: selectedFormName.value,
                        ),
                      );
                      if (context.mounted && formName != null) {
                        selectedFormName.value =
                            formName == info.name ? null : formName;
                        isShiny.value = false;
                      }
                    },
                    icon: const Icon(Icons.swap_horiz),
                    label: Text(
                      selectedForm == null
                          ? 'Alternate Forms & Mega Evolution'
                          : 'Form: ${selectedForm.name.replaceAll('-', ' ').capitalizeFirst()}',
                    ),
                  ),
                  if (selectedFormState?.hasError == true)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text('Could not load this form’s details.'),
                          ),
                          TextButton(
                            onPressed: () => ref.invalidate(
                              pokemonFormInfoProvider(
                                selectedFormName.value!,
                              ),
                            ),
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  const Gap(24),
                  Text(
                    info.desc,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black.withOpacity(0.7),
                        ),
                  ),
                  const Gap(24),
                  Divider(
                    color: Colors.black.withOpacity(0.05),
                    height: 1,
                  ),
                  const Gap(24),
                  PokemonStatusGroupView(info: displayInfo),
                  const Gap(28),
                  Text(
                    'Base Stats',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Gap(12),
                  PokemonBaseStatsView(stats: displayInfo.baseStats),
                  const Gap(32),
                  PokemonGenderRatioView(
                    genderRate: info.genderRate,
                  ),
                  const Gap(40),
                  Text(
                    'Defensive Type Matchups',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Gap(12),
                  PokemonTypeEffectivenessView(types: displayInfo.types),
                  const Gap(20),
                  Text(
                    'Offensive Strengths',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Gap(8),
                  Text(
                    'Types hit super-effectively by at least one of this Pokémon’s types.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color.fromRGBO(0, 0, 0, 0.65),
                        ),
                  ),
                  const Gap(12),
                  matchups.when(
                    loading: () => const LinearProgressIndicator(),
                    error: (error, stackTrace) => Text(
                      'Could not load offensive matchups: $error',
                    ),
                    data: (matchupInfo) => matchupInfo.strengths.isEmpty
                        ? const Text('No super-effective type matchups.')
                        : Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: matchupInfo.strengths
                                .map((type) => PokemonTypeChip.medium(type))
                                .toList(),
                          ),
                  ),
                  const Gap(40),
                  Text(
                    "Evolutions",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Gap(12),
                  PokemonEvolutionInfoView(info: info.evolutionChainInfo!),
                  const Gap(40),
                  Text(
                    'Moves',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Gap(6),
                  Text(
                    'Expand a move to see its Physical, Special, or Status symbol and details.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color.fromRGBO(0, 0, 0, 0.65),
                        ),
                  ),
                  PokemonMovesView(
                    levelUpMoves: info.levelUpMoves,
                    machineMoves: info.machineMoves,
                    eggMoves: info.eggMoves,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FavButton extends ConsumerWidget {
  const _FavButton({
    required this.pokdexId,
  });

  final int pokdexId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFav = ref.watch(favoriteButtonViewModelProvider(pokdexId).select(
      (value) => value.isFavorite,
    ));

    return Positioned(
      right: 20,
      top: 16 + MediaQuery.of(context).padding.top,
      child: GestureDetector(
        onTap: () {
          ref
              .read(favoriteButtonViewModelProvider(pokdexId).notifier)
              .toggleFavorite();
        },
        child: AnimatedCrossFade(
          firstChild: SvgPicture.asset(
            Assets.icons.iconFavOff2,
            width: 28,
            height: 28,
          ),
          secondChild: SvgPicture.asset(
            Assets.icons.iconFavOn2,
            width: 28,
            height: 28,
          ),
          duration: const Duration(milliseconds: 300),
          crossFadeState:
              isFav ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.back(),
      child: SvgPicture.asset(
        Assets.icons.iconArrowLeft,
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _PokemonFormPicker extends ConsumerWidget {
  const _PokemonFormPicker({
    required this.pokedexId,
    required this.pokemonName,
    required this.speciesName,
    required this.selectedFormName,
  });

  final int pokedexId;
  final String pokemonName;
  final String speciesName;
  final String? selectedFormName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forms = ref.watch(
      pokemonAlternateFormsProvider(
        (pokedexId, pokemonName, speciesName),
      ),
    );

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pokémon Forms',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Gap(12),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.55,
              ),
              child: forms.when(
                loading: () => const SizedBox.shrink(),
                error: (error, stackTrace) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Could not load alternate forms: $error'),
                    TextButton(
                      onPressed: () => ref.invalidate(
                        pokemonAlternateFormsProvider(
                          (pokedexId, pokemonName, speciesName),
                        ),
                      ),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
                data: (options) => options.isEmpty
                    ? const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text('No alternate forms are listed.'),
                      )
                    : ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.catching_pokemon),
                            title: const Text('Original form'),
                            subtitle: Text(_formatName(pokemonName)),
                            trailing: selectedFormName == null
                                ? const Icon(Icons.check)
                                : null,
                            onTap: () => Navigator.of(context).pop(pokemonName),
                          ),
                          ...options.map(
                            (form) => ListTile(
                              leading: Icon(
                                form.isMega
                                    ? Icons.auto_awesome
                                    : Icons.change_circle_outlined,
                              ),
                              title: Text(_formatName(form.name)),
                              subtitle: form.isMega
                                  ? const Text('Mega Evolution')
                                  : null,
                              trailing: selectedFormName == form.name
                                  ? const Icon(Icons.check)
                                  : null,
                              onTap: () => Navigator.of(context).pop(form.name),
                            ),
                          ),
                        ],
                      ),
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

class _ShinyToggle extends StatelessWidget {
  const _ShinyToggle({
    required this.isShiny,
    required this.onPressed,
  });

  final bool isShiny;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: isShiny ? 'Show normal colors' : 'Show shiny colors',
      child: IconButton.filledTonal(
        onPressed: onPressed,
        icon: Icon(isShiny ? Icons.auto_awesome : Icons.auto_awesome_outlined),
      ),
    );
  }
}

class _PokemonImage extends StatelessWidget {
  const _PokemonImage({
    required this.imageUrl,
    required this.shinyImageUrl,
    required this.isShiny,
    required this.pokemonName,
    required this.onTap,
  });

  final String imageUrl;
  final String shinyImageUrl;
  final bool isShiny;
  final String pokemonName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final selectedImageUrl = isShiny ? shinyImageUrl : imageUrl;

    return Semantics(
      button: true,
      label: 'Show ${isShiny ? 'normal' : 'shiny'} $pokemonName',
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 280,
          height: 280,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: Image.network(
              selectedImageUrl,
              key: ValueKey(selectedImageUrl),
              width: 280,
              height: 280,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              loadingBuilder: (context, child, progress) {
                return child;
              },
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.catching_pokemon,
                size: 100,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DefaultShimmer extends StatelessWidget {
  const _DefaultShimmer({
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      period: const Duration(milliseconds: 2500),
      highlightColor: Colors.grey.withOpacity(0.6),
      child: child,
    );
  }
}
