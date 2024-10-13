import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/question_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return Container(
      margin: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.answers.map((answer) {
              return QuestionButton(answerText: answer, onTap: () {});
            })
          ],
        ),
      ),
    );
  }
}
