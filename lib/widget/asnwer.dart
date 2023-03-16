import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz/page/home_page.dart';

class Answer extends StatelessWidget {
  final isAnswerGivenCorrect;
  final int numberOfQuestion;
  final int value;
  final Function quizReset;
  const Answer(this.isAnswerGivenCorrect, this.quizReset, this.numberOfQuestion,
      this.value,
      {super.key});

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
                numberOfQuestion == 9
                    ? Navigator.of(context).pop()
                    : quizReset();
              },
              child: Text("Resetta il quiz"))
        ],
      ),
    );
  }
}
