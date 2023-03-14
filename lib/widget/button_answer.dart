import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../question_list.dart';

class AskButton extends StatelessWidget {
  final Function clickButton;
  final String textAnswer;
  final int indexClicked;
  const AskButton(this.clickButton, this.textAnswer, this.indexClicked,
      {super.key});

  @override
  Widget build(BuildContext context) {
    //onPressed:  disabled ?  null : clickButton
    return ElevatedButton(
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
        clickButton(indexClicked);
      },
      child: Text(textAnswer),
    );
  }
}
