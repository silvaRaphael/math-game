import 'package:flutter/material.dart';

class GamesModel {
  final int totalMovements;
  final int finalNumber;
  int startNumber;
  final List<DoorOptionsModel> doorsOptions;
  GamesModel({
    required this.totalMovements,
    required this.finalNumber,
    required this.startNumber,
    required this.doorsOptions,
  });
}

class DoorOptionsModel {
  final int number;
  final String operator;
  const DoorOptionsModel({
    required this.number,
    required this.operator,
  });
}

class AppColors {
  final Color? accentColor;
  final Color? backgroundColor;
  final Color? alertColor;
  AppColors({
    required this.accentColor,
    required this.backgroundColor,
    required this.alertColor,
  });
}
