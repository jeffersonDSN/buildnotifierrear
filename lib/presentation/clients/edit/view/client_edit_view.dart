import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/clients/edit/bloc/client_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';

import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
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
            loaded: (type, client, states, error) {
              return Padding(
                padding: const EdgeInsets.all(Sizes.size16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(Sizes.size16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              gapHeight16,
                              Row(
                                children: [
                                  Expanded(
                                    child: BaseTextFormField(
                                      label: 'First Name',
                                      initialValue: client.firstName,
                                      onChanged: (value) {
                                        bloc.add(
                                          ClientEditEvent.changeFirstName(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth16,
                                  Expanded(
                                    child: BaseTextFormField(
                                      label: 'Middle name',
                                      initialValue: client.middleName,
                                      onChanged: (value) {
                                        bloc.add(
                                          ClientEditEvent.changeMiddleName(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth16,
                                  Expanded(
                                    child: BaseTextFormField(
                                      label: 'Last Name',
                                      initialValue: client.lastName,
                                      onChanged: (value) {
                                        bloc.add(
                                          ClientEditEvent.changeLastName(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              gapHeight16,
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: BaseTextFormField(
                                      label: 'Phone number',
                                      initialValue: client.phoneNumber,
                                      onChanged: (value) {
                                        bloc.add(
                                          ClientEditEvent.changePhoneNumber(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth16,
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        BaseTextFormField(
                                          label: 'E-mail',
                                          initialValue: client.email,
                                          onChanged: (value) {
                                            bloc.add(
                                              ClientEditEvent.changeEmail(
                                                value: value,
                                              ),
                                            );
                                          },
                                        ),
                                        if (error != null && error.code == 2)
                                          Text(
                                            error.message,
                                            style: const TextStyle(
                                              color: AppColor.red,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              gapHeight24,
                              const Divider(),
                              gapHeight8,
                              const Text(
                                'Address',
                                style: TextStyle(
                                  fontSize: Sizes.size16,
                                  color: AppColor.primaryColorSwatch,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              gapHeight24,
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: BaseTextFormField(
                                      label: 'Address',
                                      hintText: 'Street Address, PO Box',
                                      initialValue: client.address,
                                      onChanged: (value) {
                                        bloc.add(
                                          ClientEditEvent.changeAddress(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth16,
                                  Expanded(
                                    flex: 1,
                                    child: BaseTextFormField(
                                      label: '',
                                      hintText: 'Apt #, Unit, Suite, Floor',
                                      initialValue: client.address2,
                                      onChanged: (value) {
                                        bloc.add(
                                          ClientEditEvent.changeAddress2(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth16,
                                  Expanded(
                                    flex: 2,
                                    child: BaseTextFormField(
                                      label: 'City',
                                      initialValue: client.city,
                                      onChanged: (value) {
                                        bloc.add(
                                          ClientEditEvent.changeCity(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth16,
                                  Expanded(
                                    flex: 2,
                                    child: BaseDropdownButtonField(
                                      label: 'State',
                                      value: client.state,
                                      items: [
                                        DropdownItem(
                                          value: '',
                                          title: '',
                                        ),
                                        ...states.map((state) {
                                          return DropdownItem(
                                            value: state.name,
                                            title: state.name,
                                          );
                                        }),
                                      ],
                                      onChanged: (value) {
                                        bloc.add(
                                          ClientEditEvent.changeState(
                                            value: value ?? '',
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth16,
                                  Expanded(
                                    flex: 1,
                                    child: BaseTextFormField(
                                      label: 'Zip Code',
                                      initialValue: client.zipCode,
                                      onChanged: (value) {
                                        bloc.add(
                                          ClientEditEvent.changeZipCode(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              // gapHeight24,
                              // const Divider(),
                              // gapHeight8,
                              // const Text(
                              //   'Account',
                              //   style: TextStyle(
                              //     fontSize: Sizes.size16,
                              //     color: AppColor.primaryColorSwatch,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                              // gapHeight24,
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: Column(
                              //         children: [
                              //           BaseTextFormField(
                              //             label: 'Username',
                              //             initialValue: client.userName,
                              //             onChanged: (value) {
                              //               bloc.add(
                              //                 ClientEditEvent.changeUsername(
                              //                   value: value,
                              //                 ),
                              //               );
                              //             },
                              //           ),
                              //           if (error != null && error.code == 1)
                              //             Text(
                              //               error.message,
                              //               style: const TextStyle(
                              //                 color: AppColor.red,
                              //               ),
                              //             ),
                              //         ],
                              //       ),
                              //     ),
                              //     gapWidth16,
                              //     Expanded(
                              //       child: BaseTextFormField(
                              //         label: 'Password',
                              //         initialValue: client.password,
                              //         onChanged: (value) {
                              //           bloc.add(
                              //             ClientEditEvent.changePassword(
                              //               value: value,
                              //             ),
                              //           );
                              //         },
                              //       ),
                              //     ),
                              //   ],
                              // ),
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
              );
            },
          );
        },
      ),
    );
  }
}
