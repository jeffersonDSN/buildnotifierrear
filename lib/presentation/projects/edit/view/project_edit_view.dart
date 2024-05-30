import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEditView extends StatelessWidget {
  ProjectEditView({super.key});

  final ProjectEditBloc bloc = ProjectEditBloc(
    controller: ProjectsController(
      repository: ProjectsFirestoreRepository(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    bloc.add(
      const ProjectEditEvent.load(),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: Sizes.size32,
            ),
            onPressed: () {},
          ),
          title: const Center(
            child: Text('New project'),
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
                              label: const Text('Create project'),
                              onPressed: () {
                                bloc.add(
                                  ProjectEditEvent.save(
                                    callback: () {},
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
