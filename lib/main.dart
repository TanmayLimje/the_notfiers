import 'package:flutter/material.dart';
//import 'package:the_notfiers/pages/home_page.dart';
import 'package:the_notfiers/pages/login_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
