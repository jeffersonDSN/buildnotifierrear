import 'package:buildnotifierrear/domain/controllers/activities_controller.dart';
import 'package:buildnotifierrear/domain/controllers/appointment_controller.dart';
import 'package:buildnotifierrear/domain/controllers/period_controller.dart';
import 'package:buildnotifierrear/domain/controllers/timecards_controller.dart';
import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/activities_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/appointments_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/settings_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/timecards_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/users_firestore_repository.dart';
import 'package:buildnotifierrear/infrastructure/http/location_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/bloc/timecards_bloc.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/view/timecards_overview_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Timecards extends IView {
  const Timecards({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => TimecardsOverviewBloc(
        controller: TimecardsController(
          repository: TimecardsFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
        periodController: PeriodController(
          repository: SettingsFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
        usersController: UsersController(
          repository: UsersFireStoreRepository(
            tenant: tenantId,
          ),
        ),
        appointmentController: AppointmentController(
          repository: AppointmentsFirestoreRepository(
            tenantId: tenantId,
          ),
          locationRepository: LocationRepository(),
        ),
        activitiesController: ActivitiesController(
          repository: ActivitiesFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: const TimecardsOverviewView(),
    );
  }
}
