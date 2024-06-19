import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/presentation/assign_to/bloc/assign_to_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssignToView extends StatelessWidget {
  final List<AppointmentUser> assignTo;

  const AssignToView({
    super.key,
    required this.assignTo,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AssignToBloc>(context);

    bloc.add(
      AssignToEvent.load(
        assignTo: assignTo,
      ),
    );

    var assignToResult = assignTo;

    return AlertDialog(
      elevation: 0,
      title: const Center(
        child: Text(
          'Assign to',
          style: TextStyle(
            color: AppColor.primaryColorSwatch,
          ),
        ),
      ),
      content: SizedBox(
        height: Sizes.size360,
        width: Sizes.size360,
        child: Column(
          children: [
            const Divider(),
            BlocBuilder<AssignToBloc, AssignToState>(
              bloc: bloc,
              builder: (context, state) {
                return state.when(
                  empty: () => Container(),
                  loading: (assignTo) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (assignTo, users) {
                    assignToResult = state.asLoaded.assignTo;

                    return Expanded(
                      child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          var user = users[index];

                          return CheckboxListTile(
                            title: Text('${user.firstName} ${user.lastName}'),
                            subtitle: Text(user.department),
                            value: assignTo.any(
                              (element) => element.id == user.id,
                            ),
                            onChanged: (value) {
                              bloc.add(
                                AssignToEvent.check(
                                  check: value ?? false,
                                  user: user,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FilledButton(
          child: const Text('Submit'),
          onPressed: () {
            Navigator.pop(
              context,
              assignToResult,
            );
          },
        )
      ],
    );
  }
}
