import 'package:flutter/material.dart';
import '../custom_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF2F5FA),
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: CardShadow.cardShadow,
        ),
        child: child,
      ),
    );
  }
}
