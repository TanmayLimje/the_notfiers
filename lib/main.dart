import 'package:flutter/material.dart';
import 'package:the_notfiers/pages/home_page.dart';
import 'package:the_notfiers/pages/start_page.dart';
import 'package:the_notfiers/pages/loading_page.dart';
import 'package:the_notfiers/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 224, 25, 135));

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      initialRoute: '/login',
      routes: {
        '/loading': (context) => const LoadingPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }

