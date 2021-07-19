import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/src/shared/constants/app_colors.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/images/app_bar_logo_existing_notes.png'),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: AppColors.blueGradientAppBar,
        ),
      ),
      automaticallyImplyLeading: false,
      backwardsCompatibility: false,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }
}
