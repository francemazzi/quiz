import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Answer extends StatelessWidget {
  final isAnswerGivenCorrect;
  final Function quizReset;
  const Answer(this.isAnswerGivenCorrect, this.quizReset, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
              "La risposta data è $isAnswerGivenCorrect , è ${isAnswerGivenCorrect ? "corretta" : "sbagliata"}"),
          ElevatedButton(
              onPressed: () {
                quizReset();
              },
              child: Text("Resetta il quiz"))
        ],
      ),
    );
  }
}
