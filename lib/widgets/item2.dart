import 'package:flutter/material.dart';

int weight = 47;
int age = 15;

class Item2 extends StatefulWidget {
  const Item2({super.key, required this.title});
  final String title;

  @override
  State<Item2> createState() => _Item2State();
}

class _Item2State extends State<Item2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blueGrey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              widget.title == 'Weight' ? weight.toString() : age.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.blueGrey,
                  onPressed: () {
                    setState(() {
                      (widget.title == 'Weight' ? weight++ : age++);
                    });
                  },
                  child: const Icon(
                    Icons.add,
                    size: 25,
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.blueGrey,
                  onPressed: () {
                    setState(() {
                      if (widget.title == 'Weight' && weight > 0) {
                        weight--;
                      } else if (widget.title == 'Age' && age > 0) {
                        age--;
                      }
                    });
                  },
                  child: const Icon(
                    Icons.minimize,
                    size: 25,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
