import 'package:flutter/material.dart';
import 'package:hithereapp/helpers/history.dart';
import 'package:hithereapp/utils/color_generator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  History history = new History(Colors.amber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi there App!'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: history.canGoBack()
                ? () {
                    history.goBack();
                    setState(() {});
                  }
                : null,
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: history.canGoForward()
                ? () {
                    history.goForward();
                    setState(() {});
                  }
                : null,
          ),
        ],
      ),
      body: GestureDetector(
        child: Container(
          color: history.getCurrentColor(),
          alignment: Alignment.center,
          child: Text(
            'Hey there',
            style: TextStyle(fontSize: 30),
          ),
        ),
        onTap: () {
          history.addColor(generateRandomColor());
          setState(() {});
        },
      ),
    );
  }
}
