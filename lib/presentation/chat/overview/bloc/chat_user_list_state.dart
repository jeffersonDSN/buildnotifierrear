part of 'chat_user_list_bloc.dart';

@freezed
class ChatUserListState with _$ChatUserListState {
  const factory ChatUserListState.initial() = ChatUserListStateInitial;

  const factory ChatUserListState.loading() = ChatUserListStateLoading;

  const factory ChatUserListState.loaded({
    required List<Employee> employees,
    required Employee selectedEmployee,
  }) = ChatUserListStateLoaded;
}

extension OnChatUserListState on ChatUserListState {
  ChatUserListStateLoaded get asLoaded => this as ChatUserListStateLoaded;
}
