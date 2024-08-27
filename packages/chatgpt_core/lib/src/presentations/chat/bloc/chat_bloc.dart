import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../generated/l10n.dart';
import '../../../core/components/exceptions/expired_subscription_exception.dart';
import '../../../domain/entities/chat/chat.dart';
import '../../../domain/usecase/chat_usecase.dart';
import '../../../domain/usecase/feature_permission_usecase.dart';
import 'chat_model_state.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatUsecase _chatUsecase;
  final FeaturePermissionUseCase _featurePermissionUseCase;

  ChatModelState get modelData => state.data;

  ChatBloc(
    @factoryParam String? identifier,
    this._chatUsecase,
    this._featurePermissionUseCase,
  ) : super(ChatState.initial(
          data: ChatModelState(identifier: identifier, chats: []),
        )) {
    on<_Started>(_onStarted);
    on<_CreateNewChat>(_onCreateNewChat);
    on<_DeleteChat>(_onDeleteChat);
    on<_UpdateIdentifier>(_onUpdateIdentifier);
    on<_SelectChat>(_onSelectChat);
    on<_EditChat>(_onEditChat);
  }

  ChatModelState get data => state.data;

  FutureOr<void> _onStarted(_Started event, Emitter<ChatState> emit) async {
    final chats = await _chatUsecase.getChats();
    emit(ChatState.loadChatSuccess(
      data: data.copyWith(
        chats: chats.reversed.toList(),
      ),
    ));
  }

  FutureOr<void> _onCreateNewChat(
    _CreateNewChat event,
    Emitter<ChatState> emit,
  ) async {
    try {
      emit(ChatState.loading(data: state.data));

      if (!await _featurePermissionUseCase.isPro(data.identifier)) {
        throw ExpiredSubscriptionException();
      }

      final chat = await _chatUsecase.createChat();

      emit(ChatState.createChatSuccess(
        data: data.copyWith(chats: [chat, ...modelData.chats]),
      ));
    } on ExpiredSubscriptionException catch (e) {
      emit(ChatState.expiredSubscription(
        data: state.data,
        message: e.message,
        identifier: data.identifier,
      ));

      return;
    } catch (e) {
      emit(ChatState.createChatFailed(
        data: state.data,
        message: S.current.createChatFailed_openai,
      ));
    }
  }

  FutureOr<void> _onDeleteChat(
    _DeleteChat event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.loading(data: state.data));

    final success = await _chatUsecase.deleteChat(event.chatId);

    if (!success) {
      emit(ChatState.deleteChatFailed(
        data: state.data,
        message: S.current.deleteFailed_openai,
      ));

      return;
    }

    emit(ChatState.deleteChatSuccess(
      data: state.data.copyWith(
        chats:
            modelData.chats.where((chat) => chat.id != event.chatId).toList(),
      ),
    ));
  }

  FutureOr<void> _onUpdateIdentifier(
    _UpdateIdentifier event,
    Emitter<ChatState> emit,
  ) async {
    final isActive = await _featurePermissionUseCase.isPro(event.identifier);
    emit(ChatState.updateIdentifierSuccess(
      data: data.copyWith(identifier: event.identifier),
      isExpiredSubscription: !isActive,
    ));
  }

  FutureOr<void> _onSelectChat(
    _SelectChat event,
    Emitter<ChatState> emit,
  ) async {
    try {
      emit(ChatState.loading(data: state.data));

      if (!await _featurePermissionUseCase.isPro(data.identifier)) {
        throw ExpiredSubscriptionException();
      }

      emit(ChatState.selectChatSuccess(
        data: state.data,
        chatId: event.chatId,
      ));
    } on ExpiredSubscriptionException catch (e) {
      emit(ChatState.expiredSubscription(
        data: state.data,
        message: e.message,
        identifier: data.identifier,
      ));

      return;
    } catch (e) {
      emit(ChatState.selectChatFailed(
        data: state.data,
        message: S.current.selectChatFailed_openai,
      ));
    }
  }

  FutureOr<void> _onEditChat(
    _EditChat event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.loading(data: state.data));

    final chat = event.chat.copyWith(title: event.title);

    final success = await _chatUsecase.updateChat(chat);

    if (success == false) {
      emit(ChatState.editChatFailed(data: state.data));

      return;
    }

    emit(ChatState.editChatSuccess(
      data: state.data.copyWith(
        chats: modelData.chats.map((e) {
          if (e.id == chat.id) {
            return chat;
          }

          return e;
        }).toList(),
      ),
    ));
  }
}
