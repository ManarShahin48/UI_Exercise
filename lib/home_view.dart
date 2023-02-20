import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ui_exercise/const.dart';
import 'package:ui_exercise/main_con.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final firstRow = <Widget>[];
    final secondRow = <Widget>[];

    if (_selectedIndex == -1) {
      final element0 = MainContainer(
        index: 0,
        txt1: _text1(0),
        txt2: _text2(0),
        img: _image(0),
        onTap: () {
          setState(() {
            _selectedIndex = 0;
          });
        },
      );
      final element1 = MainContainer(
        index: 1,
        txt1: _text1(1),
        txt2: _text2(1),
        img: _image(1),
        height: 100,
        width: 100,
        onTap: () {
          setState(() {
            _selectedIndex = 1;
          });
        },
      );
      final element2 = MainContainer(
        index: 2,
        txt1: _text1(2),
        txt2: _text2(2),
        img: _image(2),
        height: 100,
        width: 100,
        onTap: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
      );
      final element3 = MainContainer(
        index: 3,
        txt1: _text1(3),
        txt2: _text2(3),
        img: _image(3),
        height: 100,
        width: 100,
        onTap: () {
          setState(() {
            _selectedIndex = 3;
          });
        },
      );
      firstRow.add(element0);
      firstRow.add(element1);
      secondRow.add(element2);
      secondRow.add(element3);
    } else {
      for (int i = 0; i < 4; i++) {
        final element = Bounce(
            animate: true,
            duration: const Duration(microseconds: 500000),
            // delay: const Duration(microseconds: 50000),
            key: ValueKey(i),
            // duration: const Duration(microseconds: 5000),
            // reverseDuration: const Duration(microseconds: 5000),
            child: MainContainer(
              index: i,
              txt1:
              _selectedIndex == i ? '${_text1(i)} ${_text2(i)}' : _text1(i),
              txt2: _selectedIndex == i ? 'Now Playing .....' : _text2(i),
              img: _image(i),
              height: _selectedIndex == i ? 170 : 100,
              width: _selectedIndex == i ? 170 : 100,
              color: _selectedIndex == i ? Colors.red : Colors.black,
              fontSize: _selectedIndex == i ? 25 : 15,
              onTap: () {
                if (_selectedIndex == i) {
                  setState(() {
                    _selectedIndex = -1;
                  });
                } else {
                  setState(() {
                    _selectedIndex = i;
                  });
                }
              },
            ));
        if (i == _selectedIndex) {
          firstRow.add(element);
        } else {
          secondRow.add(element);
        }
      }
    }
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Image.asset(Constants.logo, height: 40)),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: firstRow,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: secondRow,
          ),
        ],
      ),
    );
  }
}

String _text1(int i) {
  switch (i) {
    case 0:
      return 'Smart';
    case 1:
      return 'Digital';
    case 2:
      return 'Security';
    case 3:
      return 'Health';
    default:
      return 'default';
  }
}

String _text2(int i) {
  switch (i) {
    case 0:
      return 'Cities';
    case 1:
      return 'Transformation';
    case 2:
      return '';
    case 3:
      return '';
    default:
      return 'default';
  }
}

String _image(int i) {
  switch (i) {
    case 0:
      return Constants.smartCities;
    case 1:
      return Constants.dt;
    case 2:
      return Constants.security;
    case 3:
      return Constants.healthy;
    default:
      return Constants.space;
  }
}