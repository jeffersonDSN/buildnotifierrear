import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/chat/overview/chat_overview.dart';
import 'package:buildnotifierrear/presentation/clients/edit/client_edit.dart';
import 'package:buildnotifierrear/presentation/clients/overview/clients_overview.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/home/overview/home_overview.dart';
import 'package:buildnotifierrear/presentation/projects/edit/project_edit.dart';
import 'package:buildnotifierrear/presentation/projects/overview/projects_overview.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/schedule_edit.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/schedule_overview.dart';
import 'package:buildnotifierrear/presentation/settings/edit/settings_edit.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/task_edit.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/tasks_overview.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/timecards.dart';
import 'package:buildnotifierrear/presentation/employees/edit/employee_edit.dart';
import 'package:buildnotifierrear/presentation/employees/overview/users_overvire.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mod.freezed.dart';

@freezed
class Mod with _$Mod {
  const factory Mod.home() = ModHome;
  const factory Mod.schedule({
    required ViewType type,
  }) = ModSchedule;
  const factory Mod.projects({
    required ViewType type,
  }) = ModProjects;
  const factory Mod.tasks({
    required ViewType type,
  }) = ModTasks;
  const factory Mod.clients({
    required ViewType type,
  }) = ModClients;
  const factory Mod.employees({
    required ViewType type,
  }) = ModEmployees;

  const factory Mod.timecards({
    required ViewType type,
  }) = ModTimecards;

  const factory Mod.chat({
    required ViewType type,
  }) = ModChat;

  const factory Mod.settings() = ModSettings;
}

extension OnModel on Mod {
  bool get isModHome => this is ModHome;
  bool get isModSchedule => this is ModSchedule;
  bool get isModProjects => this is ModProjects;
  bool get isModTasks => this is ModTasks;
  bool get isModClients => this is ModClients;
  bool get isModEmployees => this is ModEmployees;
  bool get isModTimeCards => this is ModTimecards;
  bool get isModChat => this is ModChat;

  ModHome get asModHome => this as ModHome;
  ModSchedule get asModSchedule => this as ModSchedule;
  ModProjects get asModProjects => this as ModProjects;
  ModTasks get asModTasks => this as ModTasks;
  ModClients get asModClients => this as ModClients;
  ModEmployees get asModEmployees => this as ModEmployees;
  ModTimecards get asModtimecards => this as ModTimecards;
  ModChat get asModchat => this as ModChat;

  Widget view() {
    return when(
      home: () => const HomeOverview(),
      schedule: (viewType) => viewType.when(
        overview: () => const ScheduleOverview(),
        create: () => const ScheduleEdit(),
        update: (id) => const ScheduleEdit(),
      ),
      projects: (viewType) => viewType.when(
        overview: () => const ProjectsOverview(),
        create: () => const ProjectEdit(),
        update: (id) => ProjectEdit(type: CrudType.update(id: id)),
      ),
      tasks: (viewType) => viewType.when(
        overview: () => const TasksOverview(),
        create: () => const TaskEdit(),
        update: (id) => TaskEdit(type: CrudType.update(id: id)),
      ),
      clients: (viewType) => viewType.when(
        overview: () => const ClientsOverview(),
        create: () => const ClientEdit(),
        update: (id) => ClientEdit(type: CrudType.update(id: id)),
      ),
      employees: (viewType) => viewType.when(
        overview: () => const UsersOverview(),
        create: () => const EmployeeEdit(),
        update: (id) => EmployeeEdit(type: CrudType.update(id: id)),
      ),
      timecards: (viewType) => viewType.when(
        overview: () => const Timecards(),
        create: () => const Timecards(),
        update: (id) => const Timecards(),
      ),
      chat: (viewType) => viewType.when(
        overview: () => const ChatOverview(),
        create: () => const ChatOverview(),
        update: (id) => const ChatOverview(),
      ),
      settings: () => const SettingsEdit(),
    );
  }

  String title(BuildContext context) {
    return when(
      home: () => context.tr.home,
      schedule: (viewType) => viewType.when(
        overview: () => context.tr.schedule,
        create: () => context.tr.newAppointment,
        update: (id) => context.tr.editAppointment,
      ),
      projects: (viewType) => viewType.when(
        overview: () => context.tr.projects,
        create: () => context.tr.newProject,
        update: (id) => context.tr.editProject,
      ),
      tasks: (viewType) => viewType.when(
        overview: () => context.tr.tasks,
        create: () => context.tr.newTask,
        update: (id) => context.tr.editTask,
      ),
      clients: (viewType) => viewType.when(
        overview: () => context.tr.clients,
        create: () => context.tr.newClient,
        update: (id) => context.tr.editClient,
      ),
      employees: (viewType) => viewType.when(
        overview: () => context.tr.employees,
        create: () => context.tr.newEmployee,
        update: (id) => context.tr.editEmployee,
      ),
      timecards: (viewType) => viewType.when(
        overview: () => context.tr.timecards,
        create: () => context.tr.timecards,
        update: (id) => context.tr.timecards,
      ),
      chat: (viewType) => viewType.when(
        overview: () => context.tr.chat,
        create: () => context.tr.chat,
        update: (id) => context.tr.chat,
      ),
      settings: () => context.tr.settings,
    );
  }
}
