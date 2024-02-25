import 'package:flutter/material.dart';
import 'package:the_notfiers/models/msg.dart';
import 'package:the_notfiers/widgets/msg_item.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key, required this.messages});

  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) => MessageItem(messages[index]),
    );
  }
}
