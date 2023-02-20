import 'package:flutter/material.dart';
import 'package:ui_exercise/const.dart';
import 'package:ui_exercise/main_con.dart';

int _selectedIndex = -1;

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Image.asset(Constants.logo, height: 40)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MainContainer(
                  heroTag: 0,
                  index: 0,
                  txt1: text1(0),
                  txt2: text2(0),
                  img: image(0),
                  onTap: () {
                    debugPrint("first screen");

                    Navigator.push(
                        context, CustomPageRoute(const SecondScreen()));
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                MainContainer(
                  heroTag: 1,
                  index: 1,
                  txt1: text1(1),
                  txt2: text2(1),
                  img: image(1),
                  onTap: () {
                    debugPrint("first screen");

                    Navigator.push(
                        context, CustomPageRoute(const SecondScreen()));
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MainContainer(
                  heroTag: 2,
                  index: 2,
                  txt1: text1(2),
                  txt2: text2(2),
                  img: image(2),
                  height: 100,
                  width: 100,
                  onTap: () {
                    debugPrint("first screen");

                    Navigator.push(
                        context, CustomPageRoute(const SecondScreen()));
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                MainContainer(
                  heroTag: 3,
                  index: 3,
                  txt1: text1(3),
                  txt2: text2(3),
                  img: image(3),
                  height: 100,
                  width: 100,
                  onTap: () {
                    debugPrint("first screen");

                    Navigator.push(
                        context, CustomPageRoute(const SecondScreen()));
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final firstRow = <Widget>[];
    final secondRow = <Widget>[];

    for (int i = 0; i < 4; i++) {
      final element = MainContainer(
        heroTag: i,
        index: i,
        txt1: _selectedIndex == i ? '${text1(i)} ${text2(i)}' : text1(i),
        txt2: _selectedIndex == i ? 'Now Playing ...' : text2(i),
        img: image(i),
        height: _selectedIndex == i ? 200 : 100,
        width: _selectedIndex == i ? 200 : 100,
        color: _selectedIndex == i ? Colors.red : Colors.black,
        onTap: () {
          if (_selectedIndex == i) {
            Navigator.of(context).popUntil(ModalRoute.withName('/first'));
          } else {
            debugPrint("second screen");
            Navigator.push(
                context,
                CustomPageRoute(
                  const ThirdScreen(),
                ));
            _selectedIndex = i;
          }
        },
      );
      if (i == _selectedIndex) {
        firstRow.add(element);
      } else {
        secondRow.add(element);
      }
    }
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(child: Image.asset(Constants.logo, height: 40)),
      ),
      body: Center(
        child: Column(
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
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    final firstRow = <Widget>[];
    final secondRow = <Widget>[];

    for (int i = 0; i < 4; i++) {
      final element = MainContainer(
        heroTag: i,
        index: i,
        txt1: _selectedIndex == i ? '${text1(i)} ${text2(i)}' : text1(i),
        txt2: _selectedIndex == i ? 'Now Playing ...' : text2(i),
        img: image(i),
        height: _selectedIndex == i ? 200 : 100,
        width: _selectedIndex == i ? 200 : 100,
        color: _selectedIndex == i ? Colors.red : Colors.black,
        onTap: () {
          if (_selectedIndex == i) {
            Navigator.of(context).popUntil(ModalRoute.withName('/first'));
          } else {
            debugPrint("third screen");
            Navigator.push(context, CustomPageRoute(const SecondScreen()));
            _selectedIndex = i;
          }
        },
      );
      if (i == _selectedIndex) {
        firstRow.add(element);
      } else {
        secondRow.add(element);
      }
    }
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(child: Image.asset(Constants.logo, height: 40)),
      ),
      body: Center(
        child: Column(
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
      ),
    );
  }
}
