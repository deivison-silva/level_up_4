import 'dart:math';
import 'package:flutter/widgets.dart';

class AppColors {
  static const Color pink = Color(0xFFF5487F);
  static const Color white = Color(0xFFFFFFFF);
  static const Color green = Color(0xFF58B368);
  static const Color dark_purple = Color(0xFF343090);
  static const Color purple = Color(0xFF8681FC);
  static const Color cyan = Color(0xFF44C2FD);
  static const Color yellow = Color(0xFFFAC736);

  static const blueGradientBackground = LinearGradient(
    colors: <Color>[
      cyan,
      dark_purple,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.1,
      0.7,
    ],
    transform: GradientRotation((-34 * pi) / 180),
  );

  static const blueGradientAppBar = LinearGradient(
    colors: <Color>[
      cyan,
      dark_purple,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.1,
      0.58,
    ],
    transform: GradientRotation((60 * pi) / 180),
  );
}
