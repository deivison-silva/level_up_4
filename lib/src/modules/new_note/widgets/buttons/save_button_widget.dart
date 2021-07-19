import 'package:flutter/material.dart';
import '../../../../shared/custom_widget.dart';

class SaveButtonWidget extends StatelessWidget {
  const SaveButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73.0,
      height: 32.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        gradient: AppColors.blueGradientAppBar,
        boxShadow: ButtonSaveShadow.buttonSaveShadow,
      ),
      child: Center(
        child: Text(
          'SALVAR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
