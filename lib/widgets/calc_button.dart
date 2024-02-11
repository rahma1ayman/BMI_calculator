import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ibm_calculator/widgets/height.dart';
import 'package:ibm_calculator/widgets/item2.dart';
import 'dialogResult.dart';

double result = 0;

class CalcButton extends StatefulWidget {
  const CalcButton({super.key});

  @override
  State<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: () {
          setState(
            () {
              result = (weight / pow((height / 100), 2)).ceilToDouble();
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => const Result(),
              );
            },
          );
        },
        child: const Text(
          'Calculate',
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
