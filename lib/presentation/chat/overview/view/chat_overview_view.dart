import 'package:buildnotifierrear/presentation/chat/overview/bloc/chat_user_list_bloc.dart';
import 'package:buildnotifierrear/presentation/chat/overview/view/chat_messages_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_custom_card_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatOverviewView extends StatelessWidget {
  final String senderId;

  const ChatOverviewView({super.key, required this.senderId});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ChatUserListBloc>(context);

    bloc.add(const ChatUserListEvent.load());

    return BaseCustomCardWidget(
      body: BlocBuilder<ChatUserListBloc, ChatUserListState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  VerticalDivider(),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ],
              );
            },
            loaded: (employees, selectedEmployee) {
              var result = [...employees];
              result.removeWhere((employee) => employee.id == senderId);

              return Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView.separated(
                      itemCount: result.length,
                      itemBuilder: (context, index) {
                        var employee = result[index];

                        return ListTile(
                          selectedTileColor:
                              AppColor.primaryColorSwatch.withOpacity(.1),
                          selected: employee == selectedEmployee,
                          leading: const CircleAvatar(),
                          title: Text(
                            '${employee.firstName} ${employee.lastName}',
                          ),
                          onTap: () {
                            bloc.add(
                              ChatUserListEvent.changeSelectedUser(
                                user: employee,
                              ),
                            );
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    flex: 2,
                    child: ChatMessagesView(
                      senderId: senderId,
                      recipientId: selectedEmployee.id,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
