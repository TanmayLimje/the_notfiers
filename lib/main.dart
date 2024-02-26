import 'package:flutter/material.dart';
import 'package:the_notfiers/pages/home_page.dart';
import 'package:the_notfiers/pages/start_page.dart';
//import 'package:the_notfiers/pages/login_page.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 224, 25, 135));

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorScheme.onPrimaryContainer,
        foregroundColor: kColorScheme.primaryContainer,
      ),
      cardTheme: CardTheme().copyWith(
        color: kColorScheme.secondaryContainer,
        margin: EdgeInsets.all(8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: kColorScheme.primaryContainer,
      )),
      // textTheme: ThemeData().textTheme.copyWith(

      // ),
    ),
    home: const HomePage(),
  ));
}
