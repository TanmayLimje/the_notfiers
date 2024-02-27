import 'package:flutter/material.dart';
import 'package:the_notfiers/models/msg.dart';
import 'package:the_notfiers/pages/msg_detail_page.dart';

class MessageItem extends StatelessWidget {
  const MessageItem(this.message, {super.key});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => MessageDetailedScreen(message: message)));
      },
      focusColor: Colors.black,
      hoverColor: Colors.black,
      borderRadius: BorderRadius.circular(18),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              //Image(image: ),
              Text(
                message.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 237, 179, 3),
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    message.content,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(Icons.date_range),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(message.formattedDate)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
