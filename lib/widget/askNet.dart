import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../network/game_model.dart';
import '../network/game_service.dart';
import '../question_list.dart';
import 'button_answer.dart';

class AskNet extends StatefulWidget {
  const AskNet({super.key});

  @override
  State<AskNet> createState() => _AskNetState();
}

class _AskNetState extends State<AskNet> {
  late Future<APIGameQuery> gameQuery;

  Future<APIGameQuery> loadGameData() async {
    final jsonData = await GameServices().fetchData();
    //return string -> APIGameQuery.fromJson(jsonDecode(jsonString as String))
    return APIGameQuery.fromJson(
        jsonDecode(jsonData as String) as Map<String, dynamic>);
  }

  @override
  void initState() {
    super.initState();
    gameQuery = loadGameData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<APIGameQuery>(
      future: gameQuery,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.id);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        //Spinner.
        return const CircularProgressIndicator();
      },
    ));
  }
}
