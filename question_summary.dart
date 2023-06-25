import 'package:flutter/material.dart';

// ignore: must_be_immutable
class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.summaryData, {super.key});

  List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 14, 14, 14),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 203, 113, 255),
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 138, 189, 255),
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
