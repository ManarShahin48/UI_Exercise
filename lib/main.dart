import 'package:flutter/material.dart';
import 'package:ui_exercise/const.dart';
import 'package:ui_exercise/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Constants.createMaterialColor(
          const Color(0xFFE00800),
        ),
        primaryColor: const Color(0xFFE00800),
      ),
      initialRoute: '/first',
      routes: {
        '/first': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}
