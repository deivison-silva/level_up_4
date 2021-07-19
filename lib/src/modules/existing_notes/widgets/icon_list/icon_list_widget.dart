import 'package:flutter/material.dart';

class IconListWidget extends StatelessWidget {
  const IconListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.date_range,
          size: 20.0,
          color: Colors.black54,
        ),
        Icon(
          Icons.attach_file_outlined,
          size: 20.0,
          color: Colors.black54,
        ),
        Icon(
          Icons.favorite,
          size: 20.0,
          color: Colors.black54,
        ),
      ],
    );
  }
}
