import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/clients/overview/bloc/clients_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/clients/overview/widgets/clients_table_widget.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientsOverviewView extends IView {
  const ClientsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ClientsOverviewBloc>(context);

    bloc.add(const ClientsOverviewEvent.load());

    return BaseScaffold(
      title: context.tr.clients,
      actions: [
        FilledButton.icon(
          icon: const Icon(Icons.add),
          label: Text(context.tr.newClient),
          onPressed: () {
            appBloc(context).add(
              const AppEvent.changeView(
                mod: Mod.clients(
                  type: ViewType.create(),
                ),
              ),
            );
          },
        )
      ],
      child: BlocBuilder<ClientsOverviewBloc, ClientsOverviewState>(
        bloc: bloc,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Card(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loaded: (
              clients,
              selectedClient,
              ptojectsOfselectedClient,
              projectsState,
            ) {
              return ClientsTableWidget(
                clients: clients,
                onPressed: (client) {
                  appBloc(context).add(
                    AppEvent.changeView(
                      mod: Mod.clients(
                        type: ViewType.update(
                          id: client.id,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
