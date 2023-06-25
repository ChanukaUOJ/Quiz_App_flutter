import 'package:flutter/material.dart';
import 'package:quizapptwo/summary/question_identifiers.dart';

class SummaryItems extends StatelessWidget {
  SummaryItems(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      children: [
        QuestionIdentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(itemData['question'] as String),
          ],
        ))
      ],
    );
  }
}
