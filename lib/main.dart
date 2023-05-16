import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 59, 27, 114),
              Color.fromARGB(221, 10, 16, 49)
            ],
             begin: Alignment.topLeft, 
             end: Alignment.bottomRight
             ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
