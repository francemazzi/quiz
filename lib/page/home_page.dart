import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz/page/question_game_page.dart';

import '../widget/navbar.dart';

class Home extends StatefulWidget {
  final bool stateGame;
  const Home({super.key, required this.stateGame});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool stateQuiz = false;

  // @override
  // void initialState() {
  //   stateQuiz = widget.stateGame;
  //   super.initState();
  // }

  void quizSart() {
    setState(() {
      stateQuiz = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar("Beveuto!", 0, stateQuiz),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    QuestionGamePage(title: 'Quiz me something')));
          },
          child: const Text('Start Quiz'),
        ),
      ),
    );
  }
}
