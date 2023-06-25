import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizapptwo/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz, super.key});

  final void Function() startQuiz;

  //private int x;
  //private int y;

  //StartScreen(int x, int y){
  //   this.x = x;
  //    this.y =y;
  //}

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'assets/images/quiz-logo.png',
        width: 300,
        color: const Color.fromARGB(155, 255, 255, 255),
      ),
      const SizedBox(
        height: 50,
      ),
      Text(
        "Learn flutter the fun way!",
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
          label: const Text(
            "Start Quiz",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ))
    ]);
  }
}
