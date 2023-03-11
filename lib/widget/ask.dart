import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../question_list.dart';

class Ask extends StatelessWidget {
  final Function clickButton;
  const Ask(this.clickButton, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          questions[0].question.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            clickButton(0);
          },
          child: Text(questions[0].answer[0].toString()),
        ),
        ElevatedButton(
          onPressed: () => {clickButton(1)},
          child: Text(questions[0].answer[1].toString()),
        ),
        ElevatedButton(
          onPressed: () => {clickButton(2)},
          child: Text(questions[0].answer[2].toString()),
        ),
        ElevatedButton(
          onPressed: () {
            clickButton(3);
          },
          child: Text(questions[0].answer[3].toString()),
        ),
      ],
    );
  }
}
