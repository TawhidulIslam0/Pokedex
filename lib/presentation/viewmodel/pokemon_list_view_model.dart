import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/model/pokedex_id_range.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';
import 'package:pokedex/domain/usecase/get_pokemon_card_info_list_usecase.dart';

part 'pokemon_list_view_model.freezed.dart';

@freezed
class PokemonListViewModelState with _$PokemonListViewModelState {
  factory PokemonListViewModelState({
    required List<PokemonCardInfo> list,
    required bool isLoading,
    required bool isEndOfList,
    String? error,
  }) = _PokemonListViewModelState;
}

class PokemonListViewModel extends StateNotifier<PokemonListViewModelState> {
  PokemonListViewModel({
    required this.useCase,
    required this.pokedexIdRange,
  }) : super(
          PokemonListViewModelState(
            list: [],
            isLoading: false,
            isEndOfList: false,
            error: null,
          ),
        ) {
    loadMore();
  }

  final GetPokemonCardInfoListUseCase useCase;
  final PokedexIdRange pokedexIdRange;

  Future<void> loadMore() async {
    if (state.isLoading || state.isEndOfList) {
      return;
    }

    state = state.copyWith(isLoading: true, error: null);
    final remain =
        pokedexIdRange.end - (state.list.length + pokedexIdRange.start - 1);
    if (remain <= 0) {
      state = state.copyWith(isLoading: false, isEndOfList: true);
      return;
    }

    final offset = state.list.isEmpty
        ? pokedexIdRange.start - 1
        : state.list.last.pokedexId;

    final limit = remain > 20 ? 20 : remain;

    try {
      final loadedList = await useCase.execute(offset, limit);
      if (loadedList.isEmpty) {
        throw StateError('The Pokédex API returned no Pokémon.');
      }

      state = state.copyWith(
        list: [...state.list, ...loadedList],
        isLoading: false,
        isEndOfList: loadedList.last.pokedexId >= pokedexIdRange.end,
      );
    } catch (error) {
      state = state.copyWith(
        isLoading: false,
        error: error.toString(),
      );
    }
  }
}

final pokemonListViewModelProvider = StateNotifierProvider.family.autoDispose<
    PokemonListViewModel,
    PokemonListViewModelState,
    PokedexIdRange>((ref, range) {
  final useCase = ref.watch(getPokemonCardInfoListUseCaseProvider);
  ref.keepAlive();
  return PokemonListViewModel(useCase: useCase, pokedexIdRange: range);
});
