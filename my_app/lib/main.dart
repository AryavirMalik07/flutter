import 'package:flutter/material.dart';
import 'package:my_app/screen.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 62, 24, 106),
            Color.fromARGB(255, 72, 19, 141)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: const Center(
          child: StartScreen(),
        ),
      ),
    )),
  );
}
