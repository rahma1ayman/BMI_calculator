import 'package:flutter/material.dart';
import 'package:ibm_calculator/widgets/calc_button.dart';
import 'package:ibm_calculator/widgets/item2.dart';

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
                text: const TextSpan(children: [
              TextSpan(
                text: 'Gender: ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              )
            ])),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Age:         ',
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
                    text: 'Result:     ',
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
          onPressed: () {},
          color: Colors.red,
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.white),
          ),
        ),
        MaterialButton(
          onPressed: () {},
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
