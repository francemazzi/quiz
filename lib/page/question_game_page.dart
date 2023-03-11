import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz/question_list.dart';

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
            ? Column(
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
              )
            : Container(
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
              ),
      ),
    );
  }
}
