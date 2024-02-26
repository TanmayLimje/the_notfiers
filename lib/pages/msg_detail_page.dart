import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_notfiers/models/msg.dart';

class MessageDetailedScreen extends StatelessWidget {
  const MessageDetailedScreen({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(message.title),
      ),
      body: Column(
        children: [Text(message.formattedDate), Text(message.content)],
      ),
    );
  }
}
