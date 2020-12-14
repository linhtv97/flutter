import 'package:flutter/material.dart';

class BarChart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BarCharState();
  }
}

class BarCharState extends State<BarChart> {
  double height = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bar Chart'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 3),
            padding: EdgeInsets.all(10.0),
            width: 60,
            height: height,
            color: Color(0xff14ff65),
          ),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(left: 250),
          child: Row(
            children: [
              Container(
                child: new FloatingActionButton(
                  heroTag: 'btn1',
                  onPressed: () => this.setState(() {
                    height = 260;
                  }),
                  child: Text('Press'),
                ),
                margin: EdgeInsets.only(right: 20),
              ),
              new FloatingActionButton(
                heroTag: 'btn2',
                onPressed: () => this.setState(() {
                  height = 40;
                }),
                child: Text('Reset'),
                backgroundColor: Colors.pink,
              ),
            ],
          ),
        ));
  }
}
