import 'dart:convert';
import 'package:http/http.dart' as http;

import 'game_model.dart';

const api_key = "Bearer token-a-caso-falso";
const apy_url = "http://localhost:4010/trivia";

class GameServices {
  Future<APIGameQuery> fetchData() async {
    final response = await http.get(Uri.parse(apy_url));

    if (response.statusCode == 200) {
      return APIGameQuery.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load query');
    }
  }
}
