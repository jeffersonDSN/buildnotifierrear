import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/core/const/images_const.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
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
      appBar: AppBar(
        backgroundColor: AppColor.primaryColorSwatch,
        iconTheme: const IconThemeData(
          color: AppColor.lightColor,
        ),
        title: Image.asset(
          '$assetImage$logo2',
          height: 48,
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.logout_outlined),
            ),
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: NavigationDrawer(
              elevation: 0,
              children: [
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    bloc.add(
                      const AppEvent.changeView(
                        mod: Mod.home(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.calendar_month),
                  title: const Text('Schedule'),
                  onTap: () {
                    bloc.add(
                      const AppEvent.changeView(
                        mod: Mod.schedule(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.business),
                  title: const Text('Projects'),
                  onTap: () {
                    bloc.add(
                      const AppEvent.changeView(
                        mod: Mod.projects(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.people),
                  title: const Text('Clients'),
                  onTap: () {
                    bloc.add(
                      const AppEvent.changeView(
                        mod: Mod.clients(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.badge),
                  title: const Text('Users'),
                  onTap: () {
                    bloc.add(
                      const AppEvent.changeView(
                        mod: Mod.users(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: child,
          ),
        ],
      ),
    );
  }
}
