import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions_screen.dart';
import 'package:flutter_application_1/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

 String activeScreen = 'start-screen';

void switchScreen(){
  setState(() {
    activeScreen = 'question-screen';
  });
}

  @override
  Widget build(context) {
    return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 78, 13, 151),
          Color.fromARGB(255, 107, 15, 168)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen(),
      ),
    ),
  );
  }
}
