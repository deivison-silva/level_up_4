import 'package:flutter/material.dart';

class ButtonSaveShadow {
  static final buttonSaveShadow = <BoxShadow>[
    BoxShadow(
      color: Colors.black.withOpacity(0.12),
      offset: Offset(0.0, 1.0),
      blurRadius: 5.0,
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.14),
      offset: Offset(0.0, 2.0),
      blurRadius: 2.0,
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      offset: Offset(0.0, 3.0),
      blurRadius: 1.0,
    ),
  ];
}
