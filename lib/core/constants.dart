import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xff0F0B1A);
  static const background2 = Color(0xff1D1438);
  static const LinearGradient backgroundColor = LinearGradient(
    colors: [background, background2],
    begin: Alignment.bottomRight,
    end: Alignment.topRight,
  );

  static const LinearGradient backgroundColor2 = LinearGradient(
    colors: [Color(0xff284654),background],
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient textGradient = LinearGradient(
    colors: [Color(0xff34D399), Color(0xff4211D4)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
