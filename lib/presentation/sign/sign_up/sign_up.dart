import 'package:buildnotifierrear/domain/controllers/settings_controller.dart';
import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/settings_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/users_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/sign/sign_up/bloc/sign_up_bloc.dart';
import 'package:buildnotifierrear/presentation/sign/sign_up/view/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(
        controller: UsersController(
          repository: UsersFireStoreRepository(tenant: ''),
        ),
        settingsController: SettingsController(
          repository: SettingsFirestoreRepository(tenantId: ''),
        ),
      ),
      child: SignUpView(),
    );
  }
}