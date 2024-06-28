import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/chat_controller.dart';
import 'package:buildnotifierrear/domain/entities/chat/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_overview_bloc.freezed.dart';
part 'chat_overview_event.dart';
part 'chat_overview_state.dart';

class ChatOverviewBloc extends Bloc<ChatOverviewEvent, ChatOverviewState> {
  final ChatController controller;

  ChatOverviewBloc({required this.controller})
      : super(const ChatOverviewState.initial()) {
    on<ChatOverviewEvent>((event, emit) async {
      await event.when(
        loadMessages: (senderId, recipientId) async {
          emit(const ChatOverviewState.loading());

          try {
            final messagesStream = controller.getMessages(
              senderId,
              recipientId,
            );

            await emit.forEach(messagesStream, onData: (messages) {
              return ChatOverviewState.loaded(messages: messages);
            });
          } catch (e) {
            emit(ChatOverviewState.error(error: e.toString()));
          }
        },
        sendMessage: (message) async {
          try {
            var last = state.asLoaded.messages.lastOrNull;

            await controller.sendMessage(
              message,
              last != null ? last.texts : {},
            );
          } catch (e) {
            emit(ChatOverviewState.error(error: e.toString()));
          }
        },
      );
    });
  }
}
