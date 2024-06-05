import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/client/client.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/clients_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/clients/edit/bloc/client_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/clients/edit/view/client_edit_view.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientEdit extends IView {
  final CrudType? type;

  const ClientEdit({
    super.key,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClientEditBloc>(
      create: (context) => ClientEditBloc(
        controller: CRUDController<Client>(
          repository: ClientsFireStoreRepository(
            tenantId: appBloc(context).state.asLogged.user.tenant,
          ),
        ),
      ),
      child: ClientEditView(
        type: type ?? const CrudType.create(),
      ),
    );
  }
}
