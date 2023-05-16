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
  var acticeScreen = 'start-screen';

  // @override
  // void initState() {
  //   acticeScreen=StartScreen(switchScreen);
  //   super.initState();
  // }
  void switchScreen() {
    setState(() {
      acticeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = acticeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : const QuestionScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 59, 27, 114),
              Color.fromARGB(221, 10, 16, 49)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
