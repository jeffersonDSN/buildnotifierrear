import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/clients/edit/client_edit.dart';
import 'package:buildnotifierrear/presentation/clients/overview/clients_overview.dart';
import 'package:buildnotifierrear/presentation/home/page/home_page.dart';
import 'package:buildnotifierrear/presentation/projects/edit/project_edit.dart';
import 'package:buildnotifierrear/presentation/projects/overview/projects_overview.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/schedule_overview.dart';
import 'package:buildnotifierrear/presentation/users/edit/user_edit.dart';
import 'package:buildnotifierrear/presentation/users/overview/users_overvire.dart';
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
  const factory Mod.clients({
    required ViewType type,
  }) = ModClients;
  const factory Mod.users({
    required ViewType type,
  }) = ModUsers;
}

extension OnModel on Mod {
  bool get isModHome => this is ModHome;
  bool get isModSchedule => this is ModSchedule;
  bool get isModProjects => this is ModProjects;
  bool get isModClients => this is ModClients;
  bool get isModUsers => this is ModUsers;

  ModHome get asModHome => this as ModHome;
  ModSchedule get asModSchedule => this as ModSchedule;
  ModProjects get asModProjects => this as ModProjects;
  ModClients get asModClients => this as ModClients;
  ModUsers get asModUsers => this as ModUsers;

  Widget view() {
    return when(
      home: () => const HomeView(),
      schedule: (viewType) => const ScheduleOverview(),
      projects: (viewType) => viewType.when(
        overview: () => const ProjectsOverview(),
        create: () => const ProjectEdit(),
        update: (id) => ProjectEdit(type: CrudType.update(id: id)),
      ),
      clients: (viewType) => viewType.when(
        overview: () => const ClientsOverview(),
        create: () => const ClientEdit(),
        update: (id) => ClientEdit(type: CrudType.update(id: id)),
      ),
      users: (viewType) => viewType.when(
        overview: () => const UsersOverview(),
        create: () => const UserEdit(),
        update: (id) => UserEdit(type: CrudType.update(id: id)),
      ),
    );
  }
}
