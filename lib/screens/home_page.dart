import 'package:flutter/material.dart';
import 'package:hithereapp/utils/color_generator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi there App!'),
      ),
      body: GestureDetector(
        child: Container(
          color: backgroundColor,
          alignment: Alignment.center,
          child: Text(
            'Hey there',
          ),
        ),
        onTap: () {
          setState(() {
            backgroundColor = generateRandomColor();
          });
        },
      ),
    );
  }
}
