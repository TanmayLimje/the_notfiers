import 'package:flutter/material.dart';
import 'package:the_notfiers/models/msg.dart';
import 'package:the_notfiers/widgets/msg_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final List<Message> _dummyMsg = [
    Message(
        title: "INFO 2",
        content: "JOIN CLASSROOM",
        id: "2",
        date: DateTime.now()),
    Message(
        title: "INFO 1",
        content: "JOIN CLASSROOM",
        id: "1",
        date: DateTime.now()),
  ];

  void _openAddAlertOverlay() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Notifiers'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 243, 223, 162),
      ),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 43, 38, 38),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 220,
              ),
              const Text(
                "some random text",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: MessageList(messages: _dummyMsg),
              ),
            ],
          )),
    );
  }
}
