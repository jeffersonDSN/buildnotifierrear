import 'package:buildnotifierrear/domain/controllers/settings_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/settings_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/settings/edit/bloc/settings_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/settings/edit/view/settings_edit_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsEdit extends IView {
  const SettingsEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsEditBloc(
        controller: SettingsController(
          repository: SettingsFirestoreRepository(
            tenantId: appBloc(context).state.asLogged.user.tenant,
          ),
        ),
      ),
      child: const SettingsEditView(),
    );
  }
}
