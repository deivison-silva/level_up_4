import 'package:flutter/material.dart';
import 'package:notes_app/src/shared/constants/fab_shadow.dart';
import '/src/shared/constants/app_colors.dart';

class FabButtonWidget extends StatelessWidget {
  const FabButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56.0,
      height: 56.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: AppColors.blueGradientBackground,
        boxShadow: FabShadow.fabShadow,
      ),
      child: Center(
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
