import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz/question_list.dart';
import 'package:quiz/widget/ask.dart';

import '../widget/asnwer.dart';

class QuestionGamePage extends StatefulWidget {
  final String title;
  const QuestionGamePage({super.key, required this.title});

  @override
  State<QuestionGamePage> createState() => _QuestionGamePageState();
}

class _QuestionGamePageState extends State<QuestionGamePage> {
  var isAnswerGivenCorrect = null;

  void clickButton(int index) {
    print(questions[0].answerIndex == index ? "SI" : "NO");
    setState(() {
      isAnswerGivenCorrect = questions[0].answerIndex == index;
    });
  }

  void quizReset() {
    setState(() {
      isAnswerGivenCorrect = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          padding: const EdgeInsets.all(16.0),
          child: isAnswerGivenCorrect == null
              ? Ask(clickButton)
              : Answer(isAnswerGivenCorrect, quizReset)),
    );
  }
}
