import 'package:buildnotifierrear/domain/entities/enums/project_status_enums.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_date_input_widget.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEditFormView extends IView {
  final GlobalKey<FormState> formKey;
  final bool isSaving;

  const ProjectEditFormView({
    super.key,
    required this.formKey,
    this.isSaving = false,
  });

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
    var state = bloc.state.asLoaded;

    return Container(
      color: AppColor.lightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
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
                              label: context.tr.name,
                              initialValue: state.project.name,
                              onChanged: (value) {
                                bloc.add(
                                  ProjectEditEvent.changeName(
                                    value: value,
                                  ),
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '${context.tr.name} ${context.tr.isRequired}';
                                }
                                return null;
                              },
                            ),
                          ),
                          gapWidth16,
                          Expanded(
                            child: BaseDropdownButtonField(
                              label: context.tr.client,
                              value: (
                                id: state.project.clientId,
                                firstName: state.project.clientFirstname,
                                lastName: state.project.clientLastname,
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
                                ...state.clients.map((cliente) {
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
                            value: state.project.startDate,
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '${context.tr.startDate} ${context.tr.isRequired}';
                              }
                              return null;
                            },
                          ),
                          gapWidth16,
                          BaseDateInputWidget(
                            label: context.tr.expectedEndDate,
                            value: state.project.expectedCompletionDate,
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '${context.tr.expectedEndDate} ${context.tr.isRequired}';
                              }
                              return null;
                            },
                          ),
                          gapWidth16,
                          Expanded(
                            child: BaseTextFormField(
                              label: context.tr.estEffort,
                              initialValue: state.project.estimatedEffort,
                              hintText: context.tr.hours,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'^\d+\:?\d{0,2}'),
                                ),
                              ],
                              onChanged: (value) {
                                bloc.add(
                                  ProjectEditEvent.changeEstimatedEffort(
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
                              label: context.tr.budget,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'^\d+\.?\d{0,2}'),
                                ),
                              ],
                              initialValue: state.project.budget > 0
                                  ? state.project.budget.toStringAsFixed(2)
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
                              value: state.project.status,
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
                              initialValue: state.project.address,
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
                              initialValue: state.project.address2,
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
                              initialValue: state.project.city,
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
                              value: state.project.state,
                              items: [
                                DropdownItem(
                                  value: '',
                                  title: '',
                                ),
                                ...state.states.map((state) {
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
                              initialValue: state.project.zipCode,
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
                      BaseTextFormField(
                        key: Key('description-${context.languageCode}'),
                        label: context.tr.description,
                        maxLines: 7,
                        initialValue:
                            state.project.descriptionList[context.languageCode],
                        onChanged: (value) {
                          bloc.add(
                            ProjectEditEvent.changeDescription(value: value),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
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
                      const AppEvent.changeView(
                        mod: Mod.projects(
                          type: ViewType.overview(),
                        ),
                      ),
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
                  label: !isSaving
                      ? Text(context.tr.save)
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      bloc.add(
                        ProjectEditEvent.save(
                          callback: () {
                            appBloc(context).add(
                              const AppEvent.goBack(),
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
