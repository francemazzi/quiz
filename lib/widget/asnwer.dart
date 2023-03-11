import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Answer extends StatelessWidget {
  final isAnswerGivenCorrect;
  final Function quizReset;
  const Answer(this.isAnswerGivenCorrect, this.quizReset, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              "La risposta data è $isAnswerGivenCorrect , è ${isAnswerGivenCorrect ? "corretta" : "sbagliata"}"),
          const SizedBox(
            height: 20,
          ),
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
