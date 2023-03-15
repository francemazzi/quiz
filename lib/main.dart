import 'package:flutter/material.dart';
import 'package:quiz/page/home_page.dart';
import 'package:quiz/page/question_game_page.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
