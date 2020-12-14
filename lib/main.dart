import 'package:flutter/material.dart';
import 'package:flutter_app_demo/Color.dart';
import 'package:flutter_app_demo/Counter.dart';
import 'package:flutter_app_demo/ListPost.dart';

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
        title: "Flutter Seminal",
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                textColor: Colors.green,
                child: Text('Counter'),
                color: Colors.indigoAccent,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Counter(
                                title: "Counter",
                              )));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                textColor: Colors.green,
                child: Text('Fetching api'),
                color: Colors.indigoAccent,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListPost()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                textColor: Colors.green,
                child: Text('Color Change'),
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Color()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
