import 'package:buildnotifierrear/presentation/home/page/home_page.dart';
import 'package:buildnotifierrear/presentation/projects/overview/projects_overview_view.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mod.freezed.dart';

@freezed
class Mod with _$Mod {
  const factory Mod.home() = ModHome;
  const factory Mod.schedule() = ModSchedule;
  const factory Mod.projects() = ModProjects;
  const factory Mod.clients() = ModClients;
  const factory Mod.users() = ModUsers;
}

extension OnModel on Mod {
  Widget view() {
    if (this is ModSchedule) {
      return Container();
    } else if (this is ModProjects) {
      return const ProjectsOverviewView();
    } else if (this is ModClients) {
      return Container();
    } else if (this is ModUsers) {
      return Container();
    } else {
      return const HomeView();
    }
  }
}
