import 'package:buildnotifierrear/presentation/clients/edit/bloc/client_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientEditFormView extends StatelessWidget {
  const ClientEditFormView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ClientEditBloc>(context);

    return BlocBuilder<ClientEditBloc, ClientEditState>(
      bloc: bloc,
      builder: (context, state) {
        return state.when(
          empty: () => Container(),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (type, client, states, error) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  Sizes.size32,
                  Sizes.size16,
                  Sizes.size32,
                  Sizes.size16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: BaseTextFormField(
                            label: context.tr.firstName,
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
                            label: context.tr.middleName,
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
                            label: context.tr.lastName,
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
                            label: context.tr.phoneNumber,
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
                                label: context.tr.email,
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
                    Text(
                      context.tr.address,
                      style: const TextStyle(
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
                            label: context.tr.address,
                            hintText: context.tr.streetAddress,
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
                            hintText: context.tr.aptUnit,
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
                            label: context.tr.state,
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
                            label: context.tr.zipCode,
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
            );
          },
        );
      },
    );
  }
}
