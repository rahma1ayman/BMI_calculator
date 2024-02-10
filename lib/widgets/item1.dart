import 'package:flutter/material.dart';

String selected = '';

class Item1 extends StatefulWidget {
  const Item1({super.key, required this.txt});
  final String txt;

  @override
  State<Item1> createState() => _Item1State();
}

class _Item1State extends State<Item1> {
  Color? containerColor = Colors.blueGrey[200];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            selected = widget.txt;
          },
        );
      },
      child: Container(
        height: 200,
        width: 195,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:
              (selected == widget.txt) ? Colors.blueGrey : Colors.blueGrey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              children: [
                widget.txt == 'Female'
                    ? const Icon(Icons.female, size: 130)
                    : const Icon(Icons.male, size: 130),
                Text(
                  widget.txt,
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
