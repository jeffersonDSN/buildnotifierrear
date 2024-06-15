import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/users_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/sign/sign_in/bloc/sign_in_bloc.dart';
import 'package:buildnotifierrear/presentation/sign/sign_in/view/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(
        controller: UsersController(
          repository: UsersFireStoreRepository(tenant: ''),
        ),
      ),
      child: SignInView(),
    );
  }
}
