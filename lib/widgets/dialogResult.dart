import 'package:flutter/material.dart';
import 'package:ibm_calculator/screens/bmiScreen.dart';
import 'package:ibm_calculator/widgets/calc_button.dart';
import 'package:ibm_calculator/widgets/item2.dart';

import '../screens/loginScreen.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      actionsAlignment: MainAxisAlignment.center,
      title: const Center(
        child: Text(
          '< BMI Calculator >',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      content: SizedBox(
        height: 85,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Gender:      ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  TextSpan(
                    text: selectedGender,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Age:          ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  TextSpan(
                    text: ' $age',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Result  => ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  TextSpan(
                    text: ' $result',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.red,
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.white),
          ),
        ),
        MaterialButton(
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: const Text(
                    'Thank You',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                backgroundColor: Colors.black,
              ),
            );
          },
          color: Colors.green,
          child: const Text(
            'Okay',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
      backgroundColor: Colors.blueGrey,
    );
  }
}
