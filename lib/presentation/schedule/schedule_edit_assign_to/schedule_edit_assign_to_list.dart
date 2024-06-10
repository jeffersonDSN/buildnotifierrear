import 'package:buildnotifierrear/domain/controllers/users_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/infrastructure/firestore/users_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/schedule/schedule_edit_assign_to/bloc/schedule_edit_assign_to_bloc.dart';
import 'package:buildnotifierrear/presentation/schedule/schedule_edit_assign_to/view/schedule_edit_assign_to_list_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScheduleEditAssignToList extends IView {
  final List<AppointmentUser> assignTo;

  const ScheduleEditAssignToList({
    super.key,
    required this.assignTo,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => ScheduleEditAssignToBloc(
        controller: UsersController(
          repository: UsersFireStoreRepository(
            tenant: tenantId,
          ),
        ),
      ),
      child: ScheduleEditAssignToView(
        assignTo: assignTo,
      ),
    );
  }
}
