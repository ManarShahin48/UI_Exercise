import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key? key,
    this.img = '',
    this.txt1 = '',
    this.txt2 = '',
    required this.index,
    required this.onTap,
    this.width = 100,
    this.height = 100,
    this.color = Colors.black,
    this.fontSize = 15,
  }) : super(key: key);

  final String img;
  final String txt1;
  final String? txt2;
  final double? width;
  final double? height;
  final double fontSize;
  final int index;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: color),
              borderRadius: const BorderRadius.all(
                Radius.circular(25.0),
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, color: color, offset: const Offset(1, 3))
              ],
              color: const Color(0xFF000000),
            ),
            width: width,
            height: height,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(30.0),
            child: SvgPicture.asset(img),
          ),
          Text(
            txt1,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              shadows: const <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),
          Text(
            txt2!,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              shadows: const <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}