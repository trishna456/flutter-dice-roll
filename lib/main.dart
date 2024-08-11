import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  /*
  main() is executed automatically by Dart, runApp() then "tells" Flutter which widget to draw onto the screen.
  */

  var colors = const [
    Color.fromARGB(255, 36, 5, 90),
    Color.fromARGB(255, 68, 17, 110)
  ];
  runApp(MaterialApp(
      home: Scaffold(
    body: GradientContainer(colors: colors),
  ))); //pass the widget tree as an argument - combination of nested flutter widgets that build the overall user interface.
  //MaterialApp - a core widget that does a lot of behind the scenes configuration
}
