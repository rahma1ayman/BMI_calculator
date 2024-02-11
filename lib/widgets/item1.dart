import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
  const Item1(
      {super.key,
      required this.txt,
      required this.onTap,
      required this.isSelected});
  final String txt;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 230,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? Colors.blueGrey : Colors.blueGrey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              children: [
                (txt == 'Female')
                    ? const Icon(
                        Icons.female,
                        size: 150,
                      )
                    : const Icon(
                        Icons.male,
                        size: 150,
                      ),
                Text(
                  txt,
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
