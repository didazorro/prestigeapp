import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/usecase/prompt_usecase.dart';
import 'prompt_model_state.dart';

part 'prompt_event.dart';

part 'prompt_state.dart';

part 'prompt_bloc.freezed.dart';

@injectable
class PromptBloc extends Bloc<PromptEvent, PromptState> {
  final PromptUsecase _promptUseCase;

  PromptBloc(this._promptUseCase)
      : super(const PromptState.initial(
          data: PromptModelState(
            prompts: [],
            filteredPrompts: [],
          ),
        )) {
    on<_GetPrompts>(_onGetPrompts);
    on<_SearchChanged>(
      _onSearchChanged,
      transformer: (events, mapper) {
        return events
            .debounceTime(const Duration(milliseconds: 300))
            .asyncExpand(mapper);
      },
    );
  }

  PromptModelState get data => state.data;

  FutureOr<void> _onGetPrompts(
    _GetPrompts event,
    Emitter<PromptState> emit,
  ) async {
    emit(PromptState.loadInProgress(data: data));

    final prompts = await _promptUseCase.getPrompts();

    emit(PromptState.loadSuccess(
      data: data.copyWith(prompts: prompts ?? []),
    ));
  }

  FutureOr<void> _onSearchChanged(
    _SearchChanged event,
    Emitter<PromptState> emit,
  ) async {
    emit(PromptState.loadInProgress(data: data));

    final searchText = event.search;

    if (searchText.isEmpty) {
      emit(PromptState.loadSuccess(
        data: data.copyWith(
          filteredPrompts: data.prompts,
        ),
      ));

      return;
    }

    final newData = data.copyWith(
      filteredPrompts: data.prompts
          .where((element) =>
              element.title
                  .toLowerCase()
                  .contains(event.search.toLowerCase()) ||
              element.description
                  .toLowerCase()
                  .contains(event.search.toLowerCase()))
          .toList(),
    );

    emit(PromptState.loadSuccess(data: newData));
  }
}
