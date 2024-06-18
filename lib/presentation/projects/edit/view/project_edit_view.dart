import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEditView extends IView {
  final CrudType type;

  const ProjectEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProjectEditBloc>(context);

    bloc.add(ProjectEditEvent.load(type: type));

    return BaseScaffold(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: Sizes.size32,
        ),
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
      title: type.when(
        create: () => 'New project',
        update: (id) => 'Edit project',
      ),
      child: BlocBuilder<ProjectEditBloc, ProjectEditState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (type, project, clients, states) {
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
                                      label: 'Name',
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
                                      label: 'Client',
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
                                      hintText: 'Apt #, Unit, Suite, Floor',
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
                                      label: 'City',
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
                                      label: 'State',
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
                                      label: 'Zip Code',
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
                              create: () => const Text('Create project'),
                              update: (id) => const Text('Update project'),
                            ),
                            onPressed: () {
                              bloc.add(
                                ProjectEditEvent.save(
                                  callback: () {
                                    appBloc(context).add(
                                      const AppEvent.changeView(
                                        mod: Mod.projects(
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
