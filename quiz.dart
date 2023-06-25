import 'package:flutter/material.dart';
import 'package:quizapptwo/question_screen.dart';
import 'package:quizapptwo/result_screen.dart';
import 'package:quizapptwo/start_screen.dart';
import 'package:quizapptwo/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> correctAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    correctAnswers.add(answer);

    //checking the length of the questions
    if (correctAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      correctAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(
      startQuiz: switchScreen,
    );

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: correctAnswers,
        restartQuiz: restartQuiz,
      );
    }
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Scaffold(
              backgroundColor: Colors.purple,
              body: Center(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 28, 2, 39),
                        Color.fromARGB(255, 94, 21, 126),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: screenWidget,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
