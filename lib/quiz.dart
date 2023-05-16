import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? acticeScreen ;

  @override
  void initState() {
    acticeScreen=StartScreen(switchScreen);
    super.initState();
  }
  void switchScreen() {
    setState(() {
      acticeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 59, 27, 114),
              Color.fromARGB(221, 10, 16, 49)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child:  acticeScreen,
        ),
      ),
    );
  }
}
