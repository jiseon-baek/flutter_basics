import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              var question = data['question'] as String;
              var userAnswer = data['user_answer'] as String;
              var answer = data['correct_answer'] as String;

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(((data['questions_index'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Q: $question',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '너의 답: $userAnswer',
                          style: const TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '정답: $answer',
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
