import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(95, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter! The fun way",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: startQuiz,
            label: Text(
              "Start Quiz!",
              style: GoogleFonts.lato(color: Colors.white,),
            ),
            icon: const Icon(Icons.arrow_right),
          )
        ],
      ),
    );
  }
}
