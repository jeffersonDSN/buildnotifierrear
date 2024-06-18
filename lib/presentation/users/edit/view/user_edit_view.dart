import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/users/edit/bloc/user_edit_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserEditView extends IView {
  final CrudType type;

  const UserEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<UserEditBloc>(context);

    bloc.add(
      UserEditEvent.load(type: type),
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
              mod: Mod.users(
                type: ViewType.overview(),
              ),
            ),
          );
        },
      ),
      title: type.when(
        create: () => 'New user',
        update: (id) => 'Edit user',
      ),
      child: BlocBuilder<UserEditBloc, UserEditState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (type, user, error) {
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
                                      initialValue: user.firstName,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeFirstName(
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
                                      initialValue: user.middleName,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeMiddleName(
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
                                      initialValue: user.lastName,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeLastName(
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
                                      initialValue: user.phoneNumber,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changePhoneNumber(
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
                                          initialValue: user.email,
                                          onChanged: (value) {
                                            bloc.add(
                                              UserEditEvent.changeEmail(
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
                                    flex: 2,
                                    child: BaseTextFormField(
                                      label: 'Address',
                                      hintText: 'Street Address, PO Box',
                                      initialValue: user.address,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeAddress(
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
                                      initialValue: user.address2,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeAddress2(
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
                                      initialValue: user.city,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeCity(
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
                                      label: 'State',
                                      initialValue: user.state,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeState(
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
                                      label: 'Zip Code',
                                      initialValue: user.zipCode,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeZipCode(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              gapHeight24,
                              const Divider(),
                              gapHeight8,
                              const Text(
                                'Account',
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
                                    flex: 2,
                                    child: BaseTextFormField(
                                      label: 'Department',
                                      initialValue: user.department,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeDepartment(
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
                                      label: 'Position',
                                      initialValue: user.position,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changePosition(
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
                                      label: 'Hourly rate',
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'^\d+\.?\d{0,2}'),
                                        ),
                                      ],
                                      initialValue: user.hourlyRate > 0
                                          ? user.hourlyRate.toStringAsFixed(2)
                                          : '',
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changeHourlyRate(
                                            value: double.tryParse(value) ?? 0,
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
                                    child: Column(
                                      children: [
                                        BaseTextFormField(
                                          label: 'Username',
                                          initialValue: user.userName,
                                          onChanged: (value) {
                                            bloc.add(
                                              UserEditEvent.changeUsername(
                                                value: value,
                                              ),
                                            );
                                          },
                                        ),
                                        if (error != null && error.code == 1)
                                          Text(
                                            error.message,
                                            style: const TextStyle(
                                              color: AppColor.red,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  gapWidth16,
                                  Expanded(
                                    child: BaseTextFormField(
                                      label: 'Password',
                                      initialValue: user.password,
                                      onChanged: (value) {
                                        bloc.add(
                                          UserEditEvent.changePassword(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth16,
                                  Expanded(
                                    flex: 1,
                                    child: BaseDropdownButtonField(
                                      isExpanded: true,
                                      value: user.userType,
                                      label: 'User type',
                                      items: [
                                        DropdownItem(
                                          value: 0,
                                          title: 'Standard User',
                                        ),
                                        DropdownItem(
                                          value: 1,
                                          title: 'Administrator',
                                        ),
                                      ],
                                      onChanged: (value) {
                                        if (value != null) {
                                          bloc.add(
                                            UserEditEvent.changeUserType(
                                              value: value,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ],
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
                              create: () => const Text('Create user'),
                              update: (id) => const Text('Update user'),
                            ),
                            onPressed: () {
                              bloc.add(
                                UserEditEvent.save(
                                  callback: () {
                                    appBloc(context).add(
                                      const AppEvent.changeView(
                                        mod: Mod.users(
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
