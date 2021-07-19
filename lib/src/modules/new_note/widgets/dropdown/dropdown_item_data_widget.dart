import 'package:flutter/material.dart';
import 'package:notes_app/src/shared/custom_widget.dart';

final List<DropDownItemData> list = [
  DropDownItemData(
    color: AppColors.pink,
    value: "pink",
  ),
  DropDownItemData(
    color: AppColors.green,
    value: "green",
  ),
  DropDownItemData(
    color: AppColors.dark_purple,
    value: "deep_purple",
  ),
  DropDownItemData(
    color: AppColors.cyan,
    value: "cyan",
  ),
  DropDownItemData(
    color: AppColors.yellow,
    value: "yellow",
  ),
];

class DropDownItemData {
  final Color color;
  final String value;

  DropDownItemData({
    required this.color,
    required this.value,
  });
}
