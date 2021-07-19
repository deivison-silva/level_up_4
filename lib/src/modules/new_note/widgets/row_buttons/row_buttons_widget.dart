import 'package:flutter/material.dart';
import '../buttons/icon_button_widget.dart';

class RowButtonsWidget extends StatelessWidget {
  const RowButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFA7A4F1).withOpacity(0.12),
            offset: Offset(0.0, 12.0),
            blurRadius: 21,
          ),
        ],
      ),
      child: Card(
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButtonWidget(icon: Icons.date_range, onPressed: () {}),
            IconButtonWidget(
                icon: Icons.attach_file_outlined, onPressed: () {}),
            IconButtonWidget(icon: Icons.favorite_border, onPressed: () {}),
            IconButtonWidget(icon: Icons.share, onPressed: () {}),
            IconButtonWidget(icon: Icons.delete, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
