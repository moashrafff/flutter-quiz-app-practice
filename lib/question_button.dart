import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 55, 39, 176),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
      onPressed: onTap,
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
