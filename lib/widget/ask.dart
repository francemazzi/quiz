import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';

import '../question_list.dart';
import 'button_answer.dart';

class Ask extends StatelessWidget {
  final Function clickButton;
  final int numberOfQuestion;
  const Ask(this.clickButton, this.numberOfQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          questions[numberOfQuestion].question.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < questions[0].answer.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AskButton(clickButton,
                      questions[numberOfQuestion].answer[i].toString(), i),
                  const SizedBox(height: 10),
                ],
              )
          ],
        )
      ],
    );
  }
}
