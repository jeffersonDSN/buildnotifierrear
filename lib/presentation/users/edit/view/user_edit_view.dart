import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/users/edit/bloc/user_edit_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserEditView extends IView {
  final CrudType type;

  const UserEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<UserEditBloc>(context);

    bloc.add(
      UserEditEvent.load(type: type),
    );

    return BaseScaffold(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: Sizes.size32,
        ),
        onPressed: () {
          appBloc(context).add(
            const AppEvent.changeView(
              mod: Mod.users(
                type: ViewType.overview(),
              ),
            ),
          );
        },
      ),
      title: type.when(
        create: () => 'New user',
        update: (id) => 'Edit user',
      ),
      child: BlocBuilder<UserEditBloc, UserEditState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (
              type,
              user,
              isDuplicateUsername,
            ) {
              return Padding(
                padding: const EdgeInsets.all(Sizes.size16),
                child: SizedBox(
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(Sizes.size16),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('First Name'),
                                  ),
                                  initialValue: user.firstName,
                                  onChanged: (value) {
                                    bloc.add(
                                      UserEditEvent.updateFirstName(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('Last name'),
                                  ),
                                  initialValue: user.lastName,
                                  onChanged: (value) {
                                    bloc.add(
                                      UserEditEvent.updateLastName(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('E-mail'),
                                  ),
                                  initialValue: user.email,
                                  onChanged: (value) {
                                    bloc.add(
                                      UserEditEvent.updateEmail(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('Username'),
                                  ),
                                  initialValue: user.userName,
                                  onChanged: (value) {
                                    bloc.add(
                                      UserEditEvent.updateUsername(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                if (isDuplicateUsername)
                                  const Text(
                                    'Username is already being used',
                                    style: TextStyle(
                                      color: AppColor.red,
                                    ),
                                  ),
                                gapHeight16,
                                TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text('Password'),
                                  ),
                                  initialValue: user.password,
                                  onChanged: (value) {
                                    bloc.add(
                                      UserEditEvent.updatePassword(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                DropdownButtonFormField(
                                  value: user.userType,
                                  decoration: const InputDecoration(
                                    label: Text(
                                      'User type',
                                    ),
                                  ),
                                  isExpanded: true,
                                  items: const [
                                    DropdownMenuItem(
                                      value: 0,
                                      child: Text('Standard User'),
                                    ),
                                    DropdownMenuItem(
                                      value: 1,
                                      child: Text('Administrator'),
                                    )
                                  ],
                                  onChanged: (value) {
                                    if (value != null) {
                                      bloc.add(
                                        UserEditEvent.updateUserType(
                                          value: value,
                                        ),
                                      );
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      gapHeight16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(Sizes.size8),
                            child: FilledButton.icon(
                              icon: const Icon(
                                Icons.check,
                              ),
                              label: type.when(
                                create: () => const Text('Create user'),
                                update: (id) => const Text('Update user'),
                              ),
                              onPressed: () {
                                bloc.add(
                                  UserEditEvent.save(
                                    callback: () {
                                      appBloc(context).add(
                                        const AppEvent.changeView(
                                          mod: Mod.users(
                                            type: ViewType.overview(),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
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
