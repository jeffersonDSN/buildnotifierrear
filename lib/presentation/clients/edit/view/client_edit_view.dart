import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/clients/edit/bloc/client_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/clients/edit/view/client_edit_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientEditView extends StatelessWidget {
  final CrudType type;

  const ClientEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ClientEditBloc>(context);

    bloc.add(
      ClientEditEvent.load(type: type),
    );

    return const ClientEditFormView();
  }
}
