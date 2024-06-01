import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/users/overview/bloc/users_overview_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersOverviewView extends IView {
  const UsersOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<UsersOverviewBloc>(context);

    bloc.add(const UsersOverviewEvent.load());

    return BaseScaffold(
      title: 'Users',
      child: BlocBuilder<UsersOverviewBloc, UsersOverviewState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loading: () => const Card(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loaded: (users) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.size16),
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            var user = users[index];

                            return ListTile(
                              title: Text('${user.firstName} ${user.lastName}'),
                              subtitle: const Text('Bricklayer'),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.edit,
                                  color: AppColor.warning,
                                ),
                                onPressed: () {},
                              ),
                            );
                          },
                        ),
                      ),
                      const VerticalDivider(),
                      Expanded(child: Container())
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
