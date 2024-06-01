import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/controllers/time_cards_controller.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/infrastructure/firestore/time_cards_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/users_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/users/overview/bloc/users_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/users/overview/view/users_overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersOverview extends StatelessWidget {
  const UsersOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersOverviewBloc>(
      create: (context) => UsersOverviewBloc(
        controller: CRUDController<User>(
          repository: UsersFireStoreRepository(),
        ),
        timeCardsController: TimeCardsController(
          repository: TimeCardsFireStoreRepository(),
        ),
      ),
      child: const UsersOverviewView(),
    );
  }
}
