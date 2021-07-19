import 'package:flutter/material.dart';
import 'app_colors.dart';

class TextStyles {
  static const TextStyle white72w700Montserrat = TextStyle(
    fontSize: 72.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: "Montserrat",
    letterSpacing: -0.05,
  );

  static const TextStyle black16w700Roboto = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: "Roboto",
    letterSpacing: 0.15,
  );

  static const TextStyle black14w400Roboto = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Colors.black54,
    fontFamily: "Roboto",
    letterSpacing: 0.15,
  );

  static const TextStyle black10w300Roboto = TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.w300,
    fontSize: 10.0,
    fontStyle: FontStyle.italic,
    fontFamily: "Roboto",
  );

  static const TextStyle white13w300Montserrat = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w300,
    color: Colors.white,
    fontFamily: "Montserrat",
    letterSpacing: 0.165,
  );

  static const TextStyle white12w200Roboto = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
    fontSize: 12.0,
    fontStyle: FontStyle.italic,
    fontFamily: "Roboto",
  );

  static const TextStyle deepPurple24w400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 24.0,
    color: AppColors.dark_purple,
  );

  static const TextStyle cyan16w400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    color: AppColors.cyan,
  );
}
