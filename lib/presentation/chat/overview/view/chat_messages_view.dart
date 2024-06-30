import 'package:buildnotifierrear/domain/entities/chat/message.dart';
import 'package:buildnotifierrear/presentation/chat/overview/bloc/chat_overview_bloc.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatMessagesView extends StatelessWidget {
  final String senderId;
  final String recipientId;

  const ChatMessagesView({
    super.key,
    required this.senderId,
    required this.recipientId,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    var bloc = BlocProvider.of<ChatOverviewBloc>(context);

    bloc.add(
      ChatOverviewEvent.loadMessages(
        senderId: senderId,
        recipientId: recipientId,
      ),
    );

    return Column(
      children: <Widget>[
        Expanded(
          child: BlocBuilder<ChatOverviewBloc, ChatOverviewState>(
            bloc: bloc,
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (messages) {
                  return ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (ctx, index) => Padding(
                      padding: const EdgeInsets.all(Sizes.size24),
                      child: MessageBubble(
                        messages[index].texts[context.languageCode] ??
                            messages[index].text,
                        messages[index].sender == senderId,
                        messages[index].sender,
                        key: ValueKey(messages[index].timestamp),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: context.tr.sendMessage,
                  ),
                  onEditingComplete: () {
                    final message = Message(
                      text: controller.text,
                      sender: senderId,
                      recipient: recipientId,
                      timestamp: DateTime.now(),
                    );

                    bloc.add(
                      ChatOverviewEvent.sendMessage(message: message),
                    );

                    controller.text = '';
                  },
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  final message = Message(
                    text: controller.text,
                    sender: senderId,
                    recipient: recipientId,
                    timestamp: DateTime.now(),
                  );

                  bloc.add(
                    ChatOverviewEvent.sendMessage(message: message),
                  );

                  controller.text = '';
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String sender;

  const MessageBubble(this.message, this.isMe, this.sender, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.grey[300] : AppColor.primaryColorSwatch,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12),
              topRight: const Radius.circular(12),
              bottomLeft:
                  !isMe ? const Radius.circular(0) : const Radius.circular(12),
              bottomRight:
                  isMe ? const Radius.circular(0) : const Radius.circular(12),
            ),
          ),
          width: 140,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              // Text(
              //   sender,
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     color: isMe ? Colors.black : AppColor.primaryColorSwatch,
              //   ),
              // ),
              Text(
                message,
                style: TextStyle(
                  color: isMe ? Colors.black : AppColor.lightColor,
                ),
                textAlign: isMe ? TextAlign.end : TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
