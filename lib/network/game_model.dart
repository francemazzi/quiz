import 'package:quiz/network/question_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_model.g.dart';

//classe inizializzata per serializzare json
@JsonSerializable()
class APIGameQuery {
  APIGameQuery({
    required this.questions,
    required this.tags,
    required this.id,
    required this.startAt,
    required this.category,
  });

  List<QuestionModel> questions;
  String id;
  String startAt;
  String category;
  List<String> tags;

  factory APIGameQuery.fromJson(Map<String, dynamic> json) =>
      _$APIGameQueryFromJson(json);

  Map<String, dynamic> toJson() => _$APIGameQueryToJson(this);
}
