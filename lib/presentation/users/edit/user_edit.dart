import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/infrastructure/firestore/users_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/users/edit/bloc/user_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/users/edit/view/project_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserEdit extends StatelessWidget {
  final CrudType? type;

  const UserEdit({
    super.key,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserEditBloc>(
      create: (context) => UserEditBloc(
        controller: CRUDController<User>(
          repository: UsersFireStoreRepository(),
        ),
      ),
      child: UserEditView(
        type: type ?? const CrudType.create(),
      ),
    );
  }
}
