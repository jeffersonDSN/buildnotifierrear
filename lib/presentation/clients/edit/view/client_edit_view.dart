import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/clients/edit/bloc/client_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientEditView extends IView {
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

    return BaseScaffold(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: Sizes.size32,
        ),
        onPressed: () {
          appBloc(context).add(
            const AppEvent.changeView(
              mod: Mod.clients(
                type: ViewType.overview(),
              ),
            ),
          );
        },
      ),
      title: type.when(
        create: () => 'New client',
        update: (id) => 'Edit client',
      ),
      child: BlocBuilder<ClientEditBloc, ClientEditState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (type, user) {
              return Padding(
                padding: const EdgeInsets.all(Sizes.size16),
                child: SizedBox(
                  width: Sizes.size600,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(Sizes.size16),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'First Name',
                                  ),
                                  initialValue: user.firstName,
                                  onChanged: (value) {
                                    bloc.add(
                                      ClientEditEvent.changeFirstName(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Last name',
                                  ),
                                  initialValue: user.lastName,
                                  onChanged: (value) {
                                    bloc.add(
                                      ClientEditEvent.changeLastName(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'E-mail',
                                  ),
                                  initialValue: user.email,
                                  onChanged: (value) {
                                    bloc.add(
                                      ClientEditEvent.changeEmail(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Phone number',
                                  ),
                                  initialValue: user.phoneNumber,
                                  onChanged: (value) {
                                    bloc.add(
                                      ClientEditEvent.changePhoneNumber(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      gapHeight16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(Sizes.size8),
                            child: FilledButton.icon(
                              icon: const Icon(
                                Icons.check,
                              ),
                              label: type.when(
                                create: () => const Text('Create client'),
                                update: (id) => const Text('Update client'),
                              ),
                              onPressed: () {
                                bloc.add(
                                  ClientEditEvent.save(
                                    callback: () {
                                      appBloc(context).add(
                                        const AppEvent.changeView(
                                          mod: Mod.clients(
                                            type: ViewType.overview(),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
