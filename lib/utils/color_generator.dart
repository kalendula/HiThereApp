import 'dart:math';

import 'package:flutter/material.dart';

int generateRandomNumber(int max){
  return Random().nextInt(max);
}

Color generateRandomColor(){
  return Color.fromARGB(255, generateRandomNumber(255), generateRandomNumber(255), generateRandomNumber(255));
}