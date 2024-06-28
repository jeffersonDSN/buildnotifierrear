part of 'chat_user_list_bloc.dart';

@freezed
class ChatUserListEvent with _$ChatUserListEvent {
  const factory ChatUserListEvent.load() = ChatUserListEventLoad;

  const factory ChatUserListEvent.changeSelectedUser({
    required Employee user,
  }) = ChatUserListEventChangeSelectUser;
}
