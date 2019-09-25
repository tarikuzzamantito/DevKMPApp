import 'dart:math';

import 'package:flutter/material.dart';

class Practice2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HelloRectangle(),
    );
  }
}

class HelloRectangle extends StatefulWidget {
  final String text;

  HelloRectangle({
    this.text,
  });

  @override
  createState() => _HelloRectangleState();
}
class _HelloRectangleState extends State<HelloRectangle> {
  Color _color = Colors.greenAccent;
  void _generateRandomColor() {
    var random = Random();
    setState(() {
      _color = Color.fromARGB(
        255,
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          print('I was pressed!');
          _generateRandomColor();
        },
        color: _color,
        child: Center(
          child: Text(
            'Converter',
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}