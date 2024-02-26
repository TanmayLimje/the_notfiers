import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:the_notfiers/models/msg.dart';
import 'package:the_notfiers/widgets/msg_list.dart';
import 'package:the_notfiers/widgets/new_msg.dart';

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
    Message(
      title: 'Class test 1',
      content: 'collect classtext paper',
      id: '2',
      date: DateTime.now(),
    )
  ];

  void _openAddAlertOverlay() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => const NewMessage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Notifiers'),
        actions: [
          IconButton(
            onPressed: _openAddAlertOverlay,
            icon: const Icon(Icons.add),
          )
        ],
        //backgroundColor: const Color.fromARGB(255, 243, 223, 162),
      ),
      body: //Container(
          // decoration: const BoxDecoration(
          //   gradient: LinearGradient(
          //     colors: [
          //       Color.fromARGB(255, 237, 57, 225),
          //       Color.fromARGB(255, 232, 44, 84),
          //     ],
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //   ),
          // ),
          Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          // const Text(
          //   "some random text",
          //   style: TextStyle(color: Colors.black),
          // ),
          Center(
            child: Image.asset(
              'lib/images/college_logo.png',
              width: 350,
            ),
          ),
          Expanded(
            child: MessageList(messages: _dummyMsg),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey,
            padding: EdgeInsets.all(8),
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person_rounded,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
