import 'package:flutter/material.dart';

class FabShadow {
  static final fabShadow = <BoxShadow>[
    BoxShadow(
      color: Colors.black.withOpacity(0.12),
      blurRadius: 18.0,
      offset: Offset(0.0, 1.0),
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.14),
      blurRadius: 10.0,
      offset: Offset(0.0, 6.0),
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      blurRadius: 5.0,
      offset: Offset(0.0, 3.0),
      spreadRadius: -1,
    ),
  ];
}
