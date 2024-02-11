import 'package:flutter/material.dart';
import 'package:ibm_calculator/widgets/height.dart';
import 'package:ibm_calculator/widgets/item1.dart';
import 'package:ibm_calculator/widgets/item2.dart';
import '../widgets/calc_button.dart';

String selectedGender = 'Female';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _IbmScreenState();
}

class _IbmScreenState extends State<BmiScreen> {
  bool isFemaleSelected = true;
  bool isMaleSelected = false;

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
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Item1(
                  txt: 'Female',
                  onTap: () {
                    setState(() {
                      isFemaleSelected = true;
                      isMaleSelected = false;
                      selectedGender = 'Female';
                    });
                  },
                  isSelected: isFemaleSelected,
                ),
                Item1(
                  txt: 'Male',
                  onTap: () {
                    setState(() {
                      isFemaleSelected = false;
                      isMaleSelected = true;
                      selectedGender = 'Male';
                    });
                  },
                  isSelected: isMaleSelected,
                ),
              ],
            ),
            const HeightWidget(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Item2(title: 'Weight'),
                Item2(title: 'Age'),
              ],
            ),
            const CalcButton(),
            // piece
          ],
        ),
      ),
    );
  }
}
