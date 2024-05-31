import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/infrastructure/firestore/projects_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/edit/view/project_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEdit extends StatelessWidget {
  final CrudType? type;

  const ProjectEdit({
    super.key,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectEditBloc>(
      create: (context) => ProjectEditBloc(
        controller: ProjectsController(
          repository: ProjectsFirestoreRepository(),
        ),
      ),
      child: ProjectEditView(type: type ?? const CrudType.create()),
    );
  }
}
