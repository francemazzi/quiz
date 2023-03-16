import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz/question_list.dart';
import 'package:quiz/widget/ask.dart';

import '../widget/asnwer.dart';
import '../widget/navbar.dart';

class QuestionGamePage extends StatefulWidget {
  final String title;
  const QuestionGamePage({super.key, required this.title});

  @override
  State<QuestionGamePage> createState() => _QuestionGamePageState();
}

class _QuestionGamePageState extends State<QuestionGamePage> {
  var isAnswerGivenCorrect = null;
  int incrementAnswer = 0;

  late int value = 0;

  void clickButton(int index) {
    setState(() {
      isAnswerGivenCorrect = questions[incrementAnswer].answerIndex == index;
      if (isAnswerGivenCorrect) {
        value++;
        // print(index);
      }
    });
  }

  void quizReset() {
    setState(() {
      isAnswerGivenCorrect = null;
      incrementAnswer < 9 ? incrementAnswer++ : incrementAnswer = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(widget.title, incrementAnswer, true),
      body: Container(
          padding: const EdgeInsets.all(16.0),
          child: isAnswerGivenCorrect == null
              ? Ask(clickButton, incrementAnswer)
              : Answer(
                  isAnswerGivenCorrect, quizReset, incrementAnswer, value)),
    );
  }
}
