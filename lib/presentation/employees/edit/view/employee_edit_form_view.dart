import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/employees/edit/bloc/employee_edit_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeEditFormView extends IView {
  const EmployeeEditFormView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<EmployeeEditBloc>(context);

    return Container(
      color: AppColor.lightColor,
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<EmployeeEditBloc, EmployeeEditState>(
              bloc: bloc,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (type, employee, states, error) {
                    return SingleChildScrollView(
                      child: Form(
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
                              gapHeight8,
                              Row(
                                children: [
                                  Expanded(
                                    child: BaseTextFormField(
                                      label: context.tr.firstName,
                                      initialValue: employee.firstName,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changeFirstName(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    child: BaseTextFormField(
                                      label: context.tr.middleName,
                                      initialValue: employee.middleName,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changeMiddleName(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    child: BaseTextFormField(
                                      label: context.tr.lastName,
                                      initialValue: employee.lastName,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changeLastName(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              gapHeight8,
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: BaseTextFormField(
                                      label: context.tr.phoneNumber,
                                      initialValue: employee.phoneNumber,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changePhoneNumber(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        BaseTextFormField(
                                          label: context.tr.email,
                                          initialValue: employee.email,
                                          onChanged: (value) {
                                            bloc.add(
                                              EmployeeEditEvent.changeEmail(
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
                                      initialValue: employee.address,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changeAddress(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    flex: 1,
                                    child: BaseTextFormField(
                                      label: '',
                                      hintText: context.tr.aptUnit,
                                      initialValue: employee.address2,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changeAddress2(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    flex: 2,
                                    child: BaseTextFormField(
                                      label: context.tr.city,
                                      initialValue: employee.city,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changeCity(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    flex: 2,
                                    child: BaseDropdownButtonField(
                                      label: context.tr.state,
                                      value: employee.state,
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
                                          EmployeeEditEvent.changeState(
                                            value: value ?? '',
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    flex: 1,
                                    child: BaseTextFormField(
                                      label: context.tr.zipCode,
                                      initialValue: employee.zipCode,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changeZipCode(
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
                              Text(
                                context.tr.account,
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
                                    flex: 2,
                                    child: BaseTextFormField(
                                      label: context.tr.department,
                                      initialValue: employee.department,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changeDepartment(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    flex: 2,
                                    child: BaseTextFormField(
                                      label: context.tr.position,
                                      initialValue: employee.position,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changePosition(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    flex: 1,
                                    child: BaseTextFormField(
                                      label: context.tr.hourlyRate,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'^\d+\.?\d{0,2}'),
                                        ),
                                      ],
                                      initialValue: employee.hourlyRate > 0
                                          ? employee.hourlyRate
                                              .toStringAsFixed(2)
                                          : '',
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changeHourlyRate(
                                            value: double.tryParse(value) ?? 0,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              gapHeight8,
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        BaseTextFormField(
                                          label: context.tr.userName,
                                          initialValue: employee.userName,
                                          onChanged: (value) {
                                            bloc.add(
                                              EmployeeEditEvent
                                                  .changeEmployeename(
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
                                  gapWidth8,
                                  Expanded(
                                    child: BaseTextFormField(
                                      label: context.tr.password,
                                      initialValue: employee.password,
                                      onChanged: (value) {
                                        bloc.add(
                                          EmployeeEditEvent.changePassword(
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapWidth8,
                                  Expanded(
                                    flex: 1,
                                    child: BaseDropdownButtonField(
                                      isExpanded: true,
                                      value: employee.userType,
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
                                            EmployeeEditEvent
                                                .changeEmployeeType(
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
                    );
                  },
                );
              },
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(Sizes.size8),
                child: FilledButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      AppColor.warning,
                    ),
                  ),
                  icon: const Icon(Icons.close),
                  label: Text(context.tr.close),
                  onPressed: () {
                    appBloc(context).add(
                      const AppEvent.goBack(),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Sizes.size8),
                child: FilledButton.icon(
                  icon: const Icon(
                    Icons.check,
                  ),
                  label: Text(context.tr.save),
                  onPressed: () {
                    bloc.add(
                      EmployeeEditEvent.save(
                        callback: () {
                          appBloc(context).add(
                            const AppEvent.goBack(),
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
  }
}
