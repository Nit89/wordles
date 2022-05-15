import 'package:flutter/material.dart';
import 'package:wordle/wordle/views/wordle_screen.dart';
import 'package:wordle/wordle/widgets/drawer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wordle App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      initialRoute: '/',
      routes: {
        '/': (context) => const WordleScreen(),
        '/second': (context) => const Drawer_nav()
      },
    );
  }
}
