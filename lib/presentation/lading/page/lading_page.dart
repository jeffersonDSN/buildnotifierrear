import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/const/images_const.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final Widget child;
  final AppBloc bloc;

  const LandingPage({
    super.key,
    required this.child,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColor.primaryColorSwatch,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(Sizes.size24),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    '$assetImage$logo2',
                    height: 48,
                  ),
                  gapHeight32,
                  Expanded(
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
                          color: bloc.state.asLogged.mod.isModUsers
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: Colors.white,
                            textColor: Colors.white,
                            leading: const Icon(Icons.badge),
                            title: Text(context.tr.users),
                            selected: bloc.state.asLogged.mod.isModUsers,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.users(
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
                            leading: const Icon(Icons.pending_actions),
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
