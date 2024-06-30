import 'package:buildnotifierrear/domain/controllers/chat_controller.dart';
import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/chat_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/employees_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/chat/overview/bloc/chat_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/chat/overview/bloc/chat_user_list_bloc.dart';
import 'package:buildnotifierrear/presentation/chat/overview/view/chat_overview_view.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatOverview extends IView {
  const ChatOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var user = appBloc(context).state.asLogged.user;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChatUserListBloc(
            controller: EmployeesController(
              repository: EmployeesFireStoreRepository(
                tenant: user.tenant,
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ChatOverviewBloc(
            controller: ChatController(
              repository: ChatFirestoreRepository(
                tenantId: user.tenant,
              ),
            ),
          ),
        ),
      ],
      child: ChatOverviewView(
        senderId: user.id,
      ),
    );
  }
}
