import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/const/images_const.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  final Widget child;
  final AppBloc bloc;

  const Landing({
    super.key,
    required this.child,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.2,
        leading: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: const BoxDecoration(
            color: AppColor.primaryColorSwatch,
          ),
          child: Image.asset(
            '$assetImage$logo2',
          ),
        ),
        title: Text(
          bloc.state.asLogged.mod.title(context),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.notifications,
                  ),
                  onPressed: () {}),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: Sizes.size12,
                  height: Sizes.size12,
                  padding: const EdgeInsets.all(Sizes.size4),
                  decoration: BoxDecoration(
                    color: AppColor.primaryColorSwatch,
                    borderRadius: BorderRadius.circular(Sizes.size32),
                    border: Border.all(
                      color: AppColor.lightColor,
                      width: 2,
                    ),
                  ),
                ),
              )
            ],
          ),
          const VerticalDivider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              Sizes.size8,
              Sizes.size0,
              Sizes.size16,
              Sizes.size0,
            ),
            child: Row(
              children: [
                const Card(
                  child: SizedBox.square(
                    dimension: Sizes.size40,
                  ),
                ),
                gapWidth8,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bloc.state.asLogged.user.firstName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    PopupMenuButton(
                      position: PopupMenuPosition.under,
                      tooltip: '',
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text(context.tr.english),
                          onTap: () {
                            bloc.add(
                              const AppEvent.changeLanguage(
                                locale: Locale('en'),
                              ),
                            );
                          },
                        ),
                        PopupMenuItem(
                          child: Text(context.tr.portuguese),
                          onTap: () {
                            bloc.add(
                              const AppEvent.changeLanguage(
                                locale: Locale('pt'),
                              ),
                            );
                          },
                        ),
                        PopupMenuItem(
                          child: Text(context.tr.spanish),
                          onTap: () {
                            bloc.add(
                              const AppEvent.changeLanguage(
                                locale: Locale('es'),
                              ),
                            );
                          },
                        ),
                      ],
                      child: Row(
                        children: [
                          Text(
                            context.tr.selectLanguage,
                            style: TextStyle(
                              color: AppColor.secondaryColorSwatch.shade200,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColor.secondaryColorSwatch.shade200,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColor.primaryColorSwatch,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: ListView(
                      children: [
                        Container(
                          color: bloc.state.asLogged.mod.isModHome
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: Colors.white,
                            textColor: Colors.white,
                            leading: const Icon(Icons.home),
                            title: Text(context.tr.home),
                            selected: bloc.state.asLogged.mod.isModHome,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.home(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: bloc.state.asLogged.mod.isModSchedule
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: Colors.white,
                            textColor: Colors.white,
                            leading: const Icon(Icons.calendar_month),
                            title: Text(context.tr.schedule),
                            selected: bloc.state.asLogged.mod.isModSchedule,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.schedule(
                                    type: ViewType.overview(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: bloc.state.asLogged.mod.isModProjects
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: Colors.white,
                            textColor: Colors.white,
                            leading: const Icon(Icons.business),
                            title: Text(context.tr.projects),
                            selected: bloc.state.asLogged.mod.isModProjects,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.projects(
                                    type: ViewType.overview(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: bloc.state.asLogged.mod.isModTasks
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: Colors.white,
                            textColor: Colors.white,
                            leading: const Icon(Icons.task),
                            title: Text(context.tr.tasks),
                            selected: bloc.state.asLogged.mod.isModTasks,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.tasks(
                                    type: ViewType.overview(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: bloc.state.asLogged.mod.isModClients
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: Colors.white,
                            textColor: Colors.white,
                            leading: const Icon(Icons.people),
                            title: Text(context.tr.clients),
                            selected: bloc.state.asLogged.mod.isModClients,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.clients(
                                    type: ViewType.overview(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: bloc.state.asLogged.mod.isModEmployees
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: Colors.white,
                            textColor: Colors.white,
                            leading: const Icon(Icons.badge),
                            title: Text(context.tr.employees),
                            selected: bloc.state.asLogged.mod.isModEmployees,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.employees(
                                    type: ViewType.overview(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: bloc.state.asLogged.mod.isModTimeCards
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: Colors.white,
                            textColor: Colors.white,
                            leading: const Icon(Icons.pending_actions_rounded),
                            title: Text(context.tr.timecards),
                            selected: bloc.state.asLogged.mod.isModTimeCards,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.timecards(
                                    type: ViewType.overview(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: bloc.state.asLogged.mod.isModChat
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: Colors.white,
                            textColor: Colors.white,
                            leading: const Icon(Icons.chat),
                            title: Text(context.tr.chat),
                            selected: bloc.state.asLogged.mod.isModChat,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.chat(
                                    type: ViewType.overview(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Divider(),
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: const Icon(Icons.settings),
                    title: Text(context.tr.settings),
                    onTap: () {
                      bloc.add(
                        const AppEvent.changeView(
                          mod: Mod.settings(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: const Icon(Icons.logout),
                    title: Text(context.tr.signout),
                    onTap: () {
                      bloc.add(
                        const AppEvent.signOut(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                Sizes.size16,
                Sizes.size32,
                Sizes.size16,
                Sizes.size32,
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
