import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({
    Key? key,
    required this.child,
    required this.selected,
    required this.topVal_1,
    required this.topVal0,
    required this.topVal1,
    required this.topVal2,
    required this.topVal3,
    required this.rightVal_1,
    required this.rightVal0,
    required this.rightVal1,
    required this.rightVal2,
    required this.rightVal3,
  }) : super(key: key);

  final Widget child;
  final int selected;
  final double topVal_1;
  final double topVal0;
  final double topVal1;
  final double topVal2;
  final double topVal3;
  final double rightVal_1;
  final double rightVal0;
  final double rightVal1;
  final double rightVal2;
  final double rightVal3;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(seconds: 1),
      top: selected == -1
          ? topVal_1
          : selected == 0
              ? topVal0
              : selected == 1
                  ? topVal1
                  : selected == 2
                      ? topVal2
                      : selected == 3
                          ? topVal3
                          : 0,
      right: selected == -1
          ? rightVal_1
          : selected == 0
              ? rightVal0
              : selected == 1
                  ? rightVal1
                  : selected == 2
                      ? rightVal2
                      : selected == 3
                          ? rightVal3
                          : 0,
      child: child,
    );
  }
}
