import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEditView extends IView {
  final CrudType type;

  ProjectEditView({
    super.key,
    required this.type,
  });

  final ProjectEditBloc bloc = ProjectEditBloc(
    controller: ProjectsController(
      repository: ProjectsFirestoreRepository(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    bloc.add(ProjectEditEvent.load(type: type));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
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
          title: Center(
            child: type.when(
              create: () => const Text('New project'),
              update: (id) => const Text('Edit project'),
            ),
          ),
        ),
        body: BlocBuilder<ProjectEditBloc, ProjectEditState>(
          bloc: bloc,
          builder: (context, state) {
            return state.when(
              empty: () => Container(),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (type, project) {
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
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('Name'),
                                  ),
                                  initialValue: project.name,
                                  onChanged: (value) {
                                    bloc.add(
                                      ProjectEditEvent.updateName(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('Address'),
                                  ),
                                  initialValue: project.address,
                                  onChanged: (value) {
                                    bloc.add(
                                      ProjectEditEvent.updateAddress(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('City'),
                                  ),
                                  initialValue: project.city,
                                  onChanged: (value) {
                                    bloc.add(
                                      ProjectEditEvent.updateCity(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('State'),
                                  ),
                                  initialValue: project.state,
                                  onChanged: (value) {
                                    bloc.add(
                                      ProjectEditEvent.updateState(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('ZIP Code'),
                                  ),
                                  initialValue: project.zipCode,
                                  onChanged: (value) {
                                    bloc.add(
                                      ProjectEditEvent.updateZipCode(
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
      ),
    );
  }
}
