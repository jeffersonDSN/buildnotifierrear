part of 'user_edit_bloc.dart';

@freezed
class UserEditState with _$UserEditState {
  const factory UserEditState.empty() = UserEditStateEmpty;
  const factory UserEditState.loading() = UserEditStateLoading;
  const factory UserEditState.loaded({
    required CrudType type,
    required User user,
    ErrorFields? error,
  }) = UserEditStateLoaded;
}

extension OnUserEditState on UserEditState {
  UserEditStateLoaded get asLoaded => this as UserEditStateLoaded;
}
