import 'package:flutter/material.dart';
import 'package:ui_exercise/components/custom_animated_container.dart';
import 'package:ui_exercise/components/custom_main_container.dart';
import 'package:ui_exercise/const.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = -1;

  state(int i) {
    if (_selectedIndex == i) {
      setState(() {
        _selectedIndex = -1;
      });
    } else {
      setState(() {
        _selectedIndex = i;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.2),
      appBar: appBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Smart Cities
          CustomAnimatedContainer(
              selected: _selectedIndex,
              topVal_1: mediaQuery.size.height * 0.24,
              topVal0: mediaQuery.size.height * 0.2,
              topVal1: mediaQuery.size.height * 0.59,
              topVal2: mediaQuery.size.height * 0.59,
              topVal3: mediaQuery.size.height * 0.59,
              rightVal_1: mediaQuery.size.height * 0.34,
              rightVal0: mediaQuery.size.height * 0.14,
              rightVal1: mediaQuery.size.height * 0.18,
              rightVal2: mediaQuery.size.height * 0.18,
              rightVal3: mediaQuery.size.height * 0.18,
              child: customMainContainer(0, _selectedIndex, () {
                state(0);
              })),
          // Digital Transformation
          CustomAnimatedContainer(
              selected: _selectedIndex,
              topVal_1: mediaQuery.size.height * 0.24,
              topVal0: mediaQuery.size.height * 0.59,
              topVal1: mediaQuery.size.height * 0.2,
              topVal2: mediaQuery.size.height * 0.59,
              topVal3: mediaQuery.size.height * 0.59,
              rightVal_1: mediaQuery.size.height * 0.03,
              rightVal0: mediaQuery.size.height * 0.17,
              rightVal1: mediaQuery.size.height * 0.1,
              rightVal2: mediaQuery.size.height * 0.34,
              rightVal3: mediaQuery.size.height * 0.34,
              child: customMainContainer(1, _selectedIndex, () {
                state(1);
              })),
          // Security
          CustomAnimatedContainer(
              selected: _selectedIndex,
              topVal_1: mediaQuery.size.height * 0.5,
              topVal0: mediaQuery.size.height * 0.59,
              topVal1: mediaQuery.size.height * 0.59,
              topVal2: mediaQuery.size.height * 0.2,
              topVal3: mediaQuery.size.height * 0.59,
              rightVal_1: mediaQuery.size.height * 0.34,
              rightVal0: mediaQuery.size.height * 0.36,
              rightVal1: mediaQuery.size.height * 0.34,
              rightVal2: mediaQuery.size.height * 0.14,
              rightVal3: mediaQuery.size.height * 0.01,
              child: customMainContainer(2, _selectedIndex, () {
                state(2);
              })),
          // Health
          CustomAnimatedContainer(
              selected: _selectedIndex,
              topVal_1: mediaQuery.size.height * 0.5,
              topVal0: mediaQuery.size.height * 0.59,
              topVal1: mediaQuery.size.height * 0.59,
              topVal2: mediaQuery.size.height * 0.59,
              topVal3: mediaQuery.size.height * 0.2,
              rightVal_1: mediaQuery.size.height * 0.03,
              rightVal0: mediaQuery.size.height * 0.01,
              rightVal1: mediaQuery.size.height * 0.01,
              rightVal2: mediaQuery.size.height * 0.01,
              rightVal3: mediaQuery.size.height * 0.14,
              child: customMainContainer(3, _selectedIndex, () {
                state(3);
              })),
        ],
      ),
    );
  }
}
