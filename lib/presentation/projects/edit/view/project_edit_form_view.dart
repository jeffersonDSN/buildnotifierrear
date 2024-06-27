import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_date_input_widget.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEditFormView extends StatelessWidget {
  const ProjectEditFormView({super.key});

  @override
  Widget build(BuildContext context) {
    Future<DateTime?> getDate() async {
      return showDatePicker(
        context: context,
        firstDate: DateTime.utc(2010, 10, 16),
        lastDate: DateTime.utc(2030, 3, 14),
        initialDate: DateTime.now(),
      );
    }

    var bloc = BlocProvider.of<ProjectEditBloc>(context);

    return BlocBuilder<ProjectEditBloc, ProjectEditState>(
      bloc: bloc,
      builder: (context, state) {
        return bloc.state.maybeWhen(
          orElse: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          loaded: (type, project, clients, states) {
            return Form(
              child: Padding(
                padding: const EdgeInsets.all(Sizes.size16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: BaseTextFormField(
                            label: context.tr.name,
                            initialValue: project.name,
                            onChanged: (value) {
                              bloc.add(
                                ProjectEditEvent.changeName(
                                  value: value,
                                ),
                              );
                            },
                          ),
                        ),
                        gapWidth16,
                        Expanded(
                          child: BaseDropdownButtonField(
                            label: context.tr.client,
                            value: (
                              id: project.clientId,
                              firstName: project.clientFirstname,
                              lastName: project.clientLastname,
                            ),
                            isExpanded: true,
                            items: [
                              DropdownItem(
                                value: (
                                  id: '',
                                  firstName: '',
                                  lastName: '',
                                ),
                                title: '',
                              ),
                              ...clients.map((cliente) {
                                return DropdownItem(
                                  value: (
                                    id: cliente.id,
                                    firstName: cliente.firstName,
                                    lastName: cliente.lastName,
                                  ),
                                  title:
                                      '${cliente.firstName} ${cliente.lastName}',
                                );
                              }),
                            ],
                            onChanged: (value) {
                              if (value != null) {
                                bloc.add(
                                  ProjectEditEvent.changeClient(
                                    clientId: value.id,
                                    firstName: value.firstName,
                                    lastName: value.lastName,
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    gapHeight16,
                    Row(
                      children: [
                        BaseDateInputWidget(
                          label: context.tr.startDate,
                          value: project.startDate,
                          onPressedChangeDate: () async {
                            var date = await getDate();

                            if (date != null) {
                              bloc.add(
                                ProjectEditEvent.changeStartDate(
                                  value: date,
                                ),
                              );
                            }
                          },
                          onChangeDate: (value) {
                            bloc.add(
                              ProjectEditEvent.changeStartDate(
                                value: value,
                              ),
                            );
                          },
                        ),
                        gapWidth16,
                        BaseDateInputWidget(
                          label: context.tr.expectedEndDate,
                          value: project.expectedCompletionDate,
                          onPressedChangeDate: () async {
                            var date = await getDate();

                            if (date != null) {
                              bloc.add(
                                ProjectEditEvent.changeExpectedEndDate(
                                  value: date,
                                ),
                              );
                            }
                          },
                          onChangeDate: (value) {
                            bloc.add(
                              ProjectEditEvent.changeExpectedEndDate(
                                value: value,
                              ),
                            );
                          },
                        ),
                        gapWidth16,
                        Expanded(
                          flex: 1,
                          child: BaseTextFormField(
                            label: context.tr.budget,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,2}'),
                              ),
                            ],
                            initialValue: project.budget > 0
                                ? project.budget.toStringAsFixed(2)
                                : '',
                            onChanged: (value) {
                              bloc.add(
                                ProjectEditEvent.changeBudget(
                                  value: double.tryParse(value) ?? 0,
                                ),
                              );
                            },
                          ),
                        ),
                        gapWidth16,
                        Expanded(
                          flex: 2,
                          child: BaseDropdownButtonField(
                            label: context.tr.status,
                            value: project.status,
                            isExpanded: true,
                            items: ProjectStatus.values.map(
                              (status) {
                                return DropdownItem(
                                  value: status,
                                  title: status.name(context),
                                );
                              },
                            ).toList(),
                            onChanged: (value) {
                              if (value != null) {
                                bloc.add(
                                  ProjectEditEvent.changeStatus(
                                    value: value,
                                  ),
                                );
                              }
                            },
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
                            initialValue: project.address,
                            onChanged: (value) {
                              bloc.add(
                                ProjectEditEvent.changeAddress(
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
                            initialValue: project.address2,
                            onChanged: (value) {
                              bloc.add(
                                ProjectEditEvent.changeAddress2(
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
                            label: context.tr.city,
                            initialValue: project.city,
                            onChanged: (value) {
                              bloc.add(
                                ProjectEditEvent.changeCity(
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
                            value: project.state,
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
                                ProjectEditEvent.changeState(
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
                            initialValue: project.zipCode,
                            onChanged: (value) {
                              bloc.add(
                                ProjectEditEvent.changeZipCode(
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
                      context.tr.details,
                      style: const TextStyle(
                        fontSize: Sizes.size16,
                        color: AppColor.primaryColorSwatch,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    gapHeight24,
                    Expanded(
                      child: BaseTextFormField(
                        label: context.tr.description,
                        maxLines: 7,
                        initialValue: project.description,
                        onChanged: (value) {
                          bloc.add(
                            ProjectEditEvent.changeDescription(value: value),
                          );
                        },
                      ),
                    ),
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
