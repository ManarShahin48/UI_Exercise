import 'package:flutter/material.dart';
import 'package:ui_exercise/const.dart';
import 'package:ui_exercise/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Constants.createMaterialColor(
          const Color(0xFFE00800),
        ),
        primaryColor: const Color(0xFFE00800),
      ),
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
