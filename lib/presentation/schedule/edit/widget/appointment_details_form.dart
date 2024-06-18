import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class AppointmentDetailsForm extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController locationController;
  final TextEditingController descriptionController;

  final ({String id, String name}) project;
  final ({String id, String title}) task;

  final List<Project> projects;
  final List<Task> tasks;

  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedLocation;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<({String id, String name})> onChangedProject;
  final ValueChanged<({String id, String title})> onChangedTask;

  const AppointmentDetailsForm({
    super.key,
    required this.titleController,
    required this.locationController,
    required this.descriptionController,
    required this.project,
    required this.task,
    required this.projects,
    required this.tasks,
    required this.onChangedTitle,
    required this.onChangedLocation,
    required this.onChangedDescription,
    required this.onChangedProject,
    required this.onChangedTask,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseTextFormField(
          label: 'Title',
          controller: titleController,
          onChanged: onChangedTitle,
        ),
        gapHeight16,
        Row(
          children: [
            Expanded(
              child: BaseDropdownButtonField(
                label: 'Project',
                isExpanded: true,
                value: (id: project.id, name: project.name),
                items: [
                  DropdownItem(
                    value: (id: '', name: ''),
                    title: '',
                  ),
                  ...projects.map((project) {
                    return DropdownItem(
                      value: (id: project.id, name: project.name),
                      title: project.name,
                    );
                  }),
                ],
                onChanged: (value) {
                  if (value != null) {
                    onChangedProject.call(value);
                  }
                },
              ),
            ),
            gapWidth16,
            Expanded(
              child: BaseDropdownButtonField<({String id, String title})>(
                label: 'Task',
                isExpanded: true,
                value: (
                  id: task.id,
                  title: task.title,
                ),
                items: [
                  DropdownItem(
                    value: (id: '', title: ''),
                    title: '',
                  ),
                  ...tasks.map(
                    (task) {
                      return DropdownItem(
                        value: (id: task.id, title: task.title),
                        title: task.title,
                      );
                    },
                  ),
                ],
                onChanged: (value) {
                  if (value != null) {
                    onChangedTask.call(value);
                  }
                },
              ),
            ),
          ],
        ),
        gapHeight16,
        BaseTextFormField(
          label: 'Location',
          controller: locationController,
          onChanged: onChangedLocation,
        ),
        gapHeight16,
        BaseTextFormField(
          label: 'Description',
          maxLines: 2,
          controller: descriptionController,
          onChanged: onChangedDescription,
        ),
      ],
    );
  }
}
