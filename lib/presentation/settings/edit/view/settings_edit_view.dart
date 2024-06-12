import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/settings/edit/bloc/settings_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsEditView extends IView {
  const SettingsEditView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<SettingsEditBloc>(context);

    bloc.add(
      const SettingsEditEvent.load(),
    );

    return BaseScaffold(
      title: 'Settings',
      child: BlocBuilder<SettingsEditBloc, SettingsEditState>(
        bloc: bloc,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (settings) {
              return Padding(
                padding: const EdgeInsets.all(
                  Sizes.size16,
                ),
                child: SizedBox(
                  width: Sizes.size600,
                  child: Column(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(
                              Sizes.size16,
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  initialValue: settings.name,
                                  decoration: const InputDecoration(
                                    labelText: 'Company Name',
                                  ),
                                  onChanged: (value) {
                                    bloc.add(
                                      SettingsEditEvent.changeName(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                DropdownButtonFormField(
                                  value: settings.payPeriod,
                                  decoration: const InputDecoration(
                                    labelText: 'Pay period',
                                  ),
                                  items: const [
                                    DropdownMenuItem(
                                      value: 0,
                                      child: Text('Weeky'),
                                    ),
                                    DropdownMenuItem(
                                      value: 1,
                                      child: Text('Bi-Weeky'),
                                    ),
                                    DropdownMenuItem(
                                      value: 2,
                                      child: Text('Monthy'),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    bloc.add(
                                      SettingsEditEvent.changePayPeriod(
                                        value: value ?? 0,
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
                              label: const Text('Update settings'),
                              onPressed: () {
                                bloc.add(
                                  SettingsEditEvent.save(
                                    callBack: () {
                                      appBloc(context).add(
                                        const AppEvent.changeView(
                                          mod: Mod.home(),
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
