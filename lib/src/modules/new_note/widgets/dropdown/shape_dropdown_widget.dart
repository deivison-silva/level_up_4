import 'package:flutter/material.dart';

class ShapeDropdownWidget extends StatelessWidget {
  const ShapeDropdownWidget({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 18.0,
        height: 18.0,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
