import 'dart:convert';
import 'package:http/http.dart' as http;

import 'game_model.dart';

const api_key = "Bearer token-a-caso-falso";
const apy_url = "http://localhost:4010/trivia";

//TODO: inserire try catch prima di jsonDecode
//insert 401 -> riinvia a login
class GameServices {
  Future<APIGameQuery> fetchData() async {
    final response =
        await http.get(Uri.parse(apy_url), headers: {"Authorization": api_key});
    if (response.statusCode == 200) {
      final dataTestDecode = jsonDecode(response.body);
      print(dataTestDecode[0]);
      return APIGameQuery.fromJson(dataTestDecode[0]);
    } else {
      throw Exception('Failed to load query');
    }
  }
}
