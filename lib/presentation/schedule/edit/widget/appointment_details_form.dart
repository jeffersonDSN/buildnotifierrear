import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
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
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Title',
          ),
          controller: titleController,
          onChanged: onChangedTitle,
        ),
        gapHeight8,
        DropdownButtonFormField<({String id, String name})>(
          decoration: const InputDecoration(
            labelText: 'Project',
          ),
          isExpanded: true,
          value: (
            id: project.id,
            name: project.name,
          ),
          items: [
            const DropdownMenuItem(
              value: (id: '', name: ''),
              child: Text(''),
            ),
            ...projects.map((project) {
              return DropdownMenuItem(
                value: (
                  id: project.id,
                  name: project.name,
                ),
                child: Text(project.name),
              );
            }),
          ],
          onChanged: (value) {
            if (value != null) {
              onChangedProject.call(value);
            }
          },
        ),
        gapHeight8,
        DropdownButtonFormField<({String id, String title})>(
          decoration: const InputDecoration(
            labelText: 'Task',
          ),
          isExpanded: true,
          value: (
            id: task.id,
            title: task.title,
          ),
          items: [
            const DropdownMenuItem(
              value: (id: '', title: ''),
              child: Text(''),
            ),
            ...tasks.map(
              (task) {
                return DropdownMenuItem(
                  value: (id: task.id, title: task.title),
                  child: Text(task.title),
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
        gapHeight8,
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Location',
          ),
          controller: locationController,
          onChanged: onChangedLocation,
        ),
        gapHeight8,
        TextFormField(
          maxLines: 3,
          decoration: const InputDecoration(
            labelText: 'Description',
          ),
          controller: descriptionController,
          onChanged: onChangedDescription,
        ),
      ],
    );
  }
}
