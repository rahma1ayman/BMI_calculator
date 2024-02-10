import 'package:flutter/material.dart';
import 'package:ibm_calculator/screens/bmiScreen.dart';
import 'package:ibm_calculator/screens/loginScreen.dart';
void main()
{
  runApp(const IbmCalculator());
}


class IbmCalculator extends StatelessWidget {
  const IbmCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
