import 'dart:math';

import 'package:flutter/material.dart';

class Color extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ColorState();
}

class ColorState extends State<Color> {
  int index = 1;

  List colors = [Colors.orange, Colors.deepPurple, Colors.pink, Colors.blue, Colors.yellow, Colors.green];
  Random randomColor = new Random();

  void changeColor() {
    setState(() {
      index = randomColor.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Color'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Color', style: TextStyle(color: colors[index], fontSize: 40)),
            Padding(
              child: SizedBox(
                child: Container(
                  width: 180,
                  height: 40,
                  color: colors[index],
                ),
              ),
              padding: EdgeInsets.all(16.0),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {changeColor()},
        tooltip: 'Change Color',
        child: Icon(Icons.repeat),
        backgroundColor: colors[index],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
