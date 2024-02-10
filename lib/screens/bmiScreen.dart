import 'package:flutter/material.dart';
import 'package:ibm_calculator/widgets/height.dart';
import 'package:ibm_calculator/widgets/item2.dart';
import '../widgets/calc_button.dart';
import '../widgets/item1.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _IbmScreenState();
}

class _IbmScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Body Mass Index',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Item1(
                    txt: 'Female',
                  ),
                  Item1(
                    txt: 'Male',
                  ),
                ],
              ),
            ),
            Expanded(child: HeightWidget()),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Item2(title: 'Weight'),
                  Item2(title: 'Age'),
                ],
              ),
            ),
            CalcButton(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
