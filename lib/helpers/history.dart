import 'package:flutter/material.dart';

class History {
  List<Color> _history = new List<Color>();
  int _currentNumber = 0;

  History({@required Color firstColor}) {
    _history.add(firstColor);
  }

  void addColor(Color color) {
    if (_history.length > 1000) {
      _history.removeAt(0);
      // we need this to save RAM,
      // if user decides that he opened clicker or something
    }
    _history.add(color);
    _currentNumber = _history.length - 1;
  }

  Color getCurrentColor() {
    if (_currentNumber >= 0 && _currentNumber < _history.length)
      return _history[_currentNumber];
    else
      return Colors.black;
    // just dummy color to prevent possible (almost impossible) error
  }

  void goBack() {
    if (canGoBack()) _currentNumber -= 1;
  }

  bool canGoBack() {
    return _currentNumber > 0;
  }

  void goForward() {
    if (canGoForward()) _currentNumber += 1;
  }

  bool canGoForward() {
    return _currentNumber + 1 < _history.length;
  }
}
