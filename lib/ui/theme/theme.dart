import 'package:flutter/material.dart';

class WZTheme {
  static final ThemeData theme = ThemeData(
    primarySwatch: Colors.blue,
  );
}

class CustomColor extends Color {
  static int _getColorFromHex(String hexColor) {
    return int.parse(hexColor, radix: 16);
  }

  CustomColor(String hex) : super(_getColorFromHex(hex));
}

class CustomMaterialColor extends MaterialColor {

  static const int _primaryValue = 0XFF6FB2F7;

  static const Color _appColor = Color(_primaryValue);

  static const swatch = {
    100: _appColor,
    200: _appColor,
    300: _appColor,
    400: _appColor,
    500: _appColor,
    600: _appColor,
  };

  factory CustomMaterialColor.appColor() {
    return CustomMaterialColor(_primaryValue, swatch);
  }

  CustomMaterialColor(int primary, Map<int, Color> swatch)
      : super(primary, swatch);
}
