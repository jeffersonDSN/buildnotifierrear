import 'package:buildnotifierrear/domain/controllers/appointment_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/appointments_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/bloc/schedule_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/view/schedule_overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScheduleOverview extends IView {
  const ScheduleOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScheduleOverViewBloc(
        controller: AppointmentController(
          repository: AppointmentsFirestoreRepository(
            tenantId: appBloc(context).state.asLogged.user.tenant,
          ),
        ),
      ),
      child: const ScheduleOverviewView(),
    );
  }
}
