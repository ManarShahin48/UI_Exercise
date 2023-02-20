import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String space = '';
  static const String logo = 'assets/images/ET_Logo.png';
  static const String dt = 'assets/images/dg_transformation.svg';
  static const String security = 'assets/images/security.svg';
  static const String healthy = 'assets/images/healthy.svg';
  static const String smartCities = 'assets/images/smart_cities.svg';

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}