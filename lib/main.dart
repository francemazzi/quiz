import 'package:flutter/material.dart';
import 'package:quiz/question_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Squizzami',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Quiz me something'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
