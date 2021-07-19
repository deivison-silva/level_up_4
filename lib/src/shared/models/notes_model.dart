import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../custom_widget.dart';

class NotesModel {
  final String title;
  final String description;
  final String date;
  final Color color;

  NotesModel({
    required this.color,
    required this.title,
    required this.description,
    required this.date,
  });
}

final notesList = [
  NotesModel(
    color: AppColors.pink,
    title: 'Não esquecer',
    description:
        'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
    date: DateFormat('dd/MM/yy').format(DateTime.now()),
  ),
  NotesModel(
    color: AppColors.green,
    title: 'Reunião com os stakeholders',
    description:
        '- Ipsum dolor sit amet, consectur.\n- Adipiscing elit, sed do eiusmod tempor incidi.\n- Ut labore et dolore magna aliqua.',
    date: DateFormat('dd/MM/yy').format(DateTime.now()),
  ),
  NotesModel(
    color: AppColors.purple,
    title: 'Lembretes para o médicoas',
    description:
        'Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    date: DateFormat('dd/MM/yy').format(DateTime.now()),
  ),
  NotesModel(
    color: AppColors.cyan,
    title: 'Ideias para o novo app 2022',
    description:
        '- Ipsum dolor sit amet, consectur.\n- Adipiscing elit, sed do eiusmod tempor incidi.\n- Ut labore dolore.',
    date: DateFormat('dd/MM/yy').format(DateTime.now()),
  ),
  NotesModel(
    color: AppColors.yellow,
    title: 'Reunião do grupo de treinamento',
    description:
        'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
    date: DateFormat('dd/MM/yy').format(DateTime.now()),
  ),
];
