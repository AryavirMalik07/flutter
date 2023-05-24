import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(231, 238, 102, 102),
        body: GraidentContainer(
          Color.fromARGB(255, 44, 15, 94),
          Color.fromARGB(255, 26, 7, 57),
        ),
      ),
    ),
  );
}
