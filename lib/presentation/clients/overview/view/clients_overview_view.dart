import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/clients/overview/bloc/clients_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientsOverviewView extends IView {
  const ClientsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ClientsOverviewBloc>(context);

    bloc.add(const ClientsOverviewEvent.load());

    return BaseScaffold(
      title: 'Clients',
      actions: [
        FilledButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('Add'),
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
          return state.when(
            empty: () => Container(),
            loading: () => const Card(
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
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size16),
                        child: Row(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                itemCount: clients.length,
                                itemBuilder: (context, index) {
                                  var client = clients[index];

                                  return ListTile(
                                    selected: selectedClient == client,
                                    title: Text(
                                      '${client.firstName} ${client.lastName}',
                                    ),
                                    subtitle: Column(
                                      children: [
                                        gapHeight4,
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.email_outlined,
                                              color:
                                                  AppColor.primaryColorSwatch,
                                            ),
                                            gapWidth4,
                                            Text(client.email)
                                          ],
                                        ),
                                        gapHeight4,
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.phone,
                                              color:
                                                  AppColor.primaryColorSwatch,
                                            ),
                                            gapWidth4,
                                            Text(client.phoneNumber)
                                          ],
                                        ),
                                      ],
                                    ),
                                    trailing: SizedBox(
                                      width: Sizes.size72,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.edit,
                                              color: AppColor.warning,
                                            ),
                                            onPressed: () {
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
                                          ),
                                          if (selectedClient == client)
                                            const Icon(
                                              Icons.arrow_forward,
                                              color:
                                                  AppColor.primaryColorSwatch,
                                            ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      bloc.add(
                                        ClientsOverviewEvent
                                            .changeselectedClient(
                                          selectedClient: client,
                                        ),
                                      );
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const Divider();
                                },
                              ),
                            ),
                            const VerticalDivider(),
                            Expanded(
                              child: projectsState.maybeWhen(
                                orElse: () => const Card(),
                                loading: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                listing: () {
                                  return Column(
                                    children: [
                                      const Text(
                                        'Projects',
                                        style: TextStyle(
                                          color: AppColor.primaryColorSwatch,
                                          fontWeight: FontWeight.bold,
                                          fontSize: Sizes.size20,
                                        ),
                                      ),
                                      const Divider(),
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount:
                                              ptojectsOfselectedClient.length,
                                          itemBuilder: (context, index) {
                                            var project =
                                                ptojectsOfselectedClient[index];

                                            return ListTile(
                                              title: Text(project.name),
                                              subtitle:
                                                  const LinearProgressIndicator(
                                                value: 0,
                                                color: AppColor.green,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
