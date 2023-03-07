import 'package:flutter/material.dart';
import 'package:ui_exercise/components/main_con.dart';
import 'package:ui_exercise/const.dart';

Widget customMainContainer(int i, int selected, void Function() onTap) {
  return MainContainer(
    index: i,
    txt1: text1(i),
    txt2: selected == i ? 'Now Playing ...' : '',
    img: image(i),
    height: selected == i ? 180 : 100,
    width: selected == i ? 180 : 100,
    color: selected == i ? Colors.red : Colors.black,
    fontSize: selected == i ? 25 : 15,
    onTap: onTap,
  );
}
