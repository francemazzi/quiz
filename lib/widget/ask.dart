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
        ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(15.0), // Qui definiamo il padding
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    100.0), // Qui definiamo il raggio di curvatura
              ),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 17.0,
                height: 28.0 / 17.0,
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFF5319FF)),
          ),
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
