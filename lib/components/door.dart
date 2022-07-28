// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyDoor extends StatelessWidget {
  final Color? color;
  final String label;
  final int number;
  final String operator;
  final onTap;
  const MyDoor({
    Key? key,
    required this.label,
    required this.color,
    required this.number,
    required this.operator,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
