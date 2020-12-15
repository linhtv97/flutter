import 'package:flutter/material.dart';
import 'package:flutter_app_demo/BarChart.dart';
import 'package:flutter_app_demo/Counter.dart';
import 'package:flutter_app_demo/ListPost.dart';
import 'package:flutter_app_demo/RotationAnimation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(
        title: "Flutter Seminar",
      ),
    );
  }
}


class Home extends StatelessWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.countertops),
              title: Text('Counter'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Counter(
                          title: "Counter",
                        )));
              },
            ),
            ListTile(
              leading: Icon(Icons.api),
              title: Text('Fetching api'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListPost()));
              },
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Bar Chart'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BarChart()));
              },
            ),
            ListTile(
              leading: Icon(Icons.animation),
              title: Text('Rotation Animation'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RotationAnimation()));
              },
            )
          ],
        )
      ),
    );
  }
}
