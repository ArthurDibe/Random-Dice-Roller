import 'package:flutter/material.dart';
import 'package:start_flutter/gradient_container.dart';

const List<Color> listOfColors = [
  Color.fromARGB(255, 128, 84, 231),
  Color.fromARGB(255, 29, 2, 67),
];

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(listOfColors),
      ),
    ),
  );
}
