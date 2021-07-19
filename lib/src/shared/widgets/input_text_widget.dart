import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    Key? key,
    required this.text,
    this.maxLines,
    this.minLines,
    this.fontWeight,
    this.border,
    this.enableBorder,
    this.fontSize,
    this.suffixIcon,
    this.color,
    this.textInputAction,
    this.controller,
    this.validator,
  }) : super(key: key);

  final String text;
  final String? Function(String? value)? validator;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLines;
  final int? minLines;
  final InputBorder? border;
  final InputBorder? enableBorder;
  final double? fontSize;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      minLines: minLines,
      maxLines: maxLines,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          fontFamily: "Roboto",
          fontWeight: fontWeight,
          fontSize: fontSize,
          letterSpacing: 0.15,
          color: color,
        ),
        suffixIcon: suffixIcon,
        border: border,
        errorBorder: InputBorder.none,
        enabledBorder: enableBorder,
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
      validator: validator,
    );
  }
}
