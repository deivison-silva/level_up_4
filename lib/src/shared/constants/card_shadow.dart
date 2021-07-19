import 'package:flutter/material.dart';

class CardShadow {
  static final cardShadow = <BoxShadow>[
    BoxShadow(
      color: Colors.black12,
      blurRadius: 5.0,
      offset: Offset(0.0, 1.0),
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.14),
      blurRadius: 2.0,
      offset: Offset(0.0, 2.0),
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      blurRadius: 1.0,
      offset: Offset(0.0, 3.0),
      spreadRadius: -2,
    ),
  ];
}
