import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../question_list.dart';
import 'button_answer.dart';

class Ask extends StatelessWidget {
  final Function clickButton;
  const Ask(this.clickButton, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          questions[0].question.toString(),
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
                  AskButton(clickButton, questions[0].answer[i].toString()),
                  const SizedBox(height: 10),
                ],
              )
          ],
        )

        // AskButton(clickButton, questions[0].answer[0].toString()),
        // ElevatedButton(
        //   onPressed: () => {clickButton(1)},
        //   child: Text(questions[0].answer[1].toString()),
        // ),
        // ElevatedButton(
        //   onPressed: () => {clickButton(2)},
        //   child: Text(questions[0].answer[2].toString()),
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     clickButton(3);
        //   },
        //   child: Text(questions[0].answer[3].toString()),
        // ),
      ],
    );
  }
}
