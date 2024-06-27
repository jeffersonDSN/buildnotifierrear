import 'package:buildnotifierrear/domain/controllers/employees_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/infrastructure/firestore/employees_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/assign_to/bloc/assign_to_bloc.dart';
import 'package:buildnotifierrear/presentation/assign_to/view/assign_to_list_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssignToList extends IView {
  final List<AppointmentUser> assignTo;

  const AssignToList({
    super.key,
    required this.assignTo,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => AssignToBloc(
        controller: EmployeesController(
          repository: EmployeesFireStoreRepository(
            tenant: tenantId,
          ),
        ),
      ),
      child: AssignToView(
        assignTo: assignTo,
      ),
    );
  }
}
