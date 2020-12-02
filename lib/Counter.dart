import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({ Key key, this.title}): super(key: key);

  final String title;
  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  int _counterState = 1;

  void incrementCounter() {
    setState(() {
      _counterState++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("You have pushed the button this many times:"),
            Text('$_counterState')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: incrementCounter,
      ),
    );
  }
}