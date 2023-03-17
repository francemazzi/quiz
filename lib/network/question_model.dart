import 'package:json_annotation/json_annotation.dart';

part 'question_model.g.dart';

@JsonSerializable()
class QuestionModel {
  final String id;
  final int index;
  final String text;
  final String level;
  final List<Answer> answers;

  QuestionModel(
      {required this.id,
      required this.index,
      required this.text,
      required this.level,
      required this.answers});

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}

@JsonSerializable()
class Answer {
  final int id;
  final int score;
  final String text;

  Answer({required this.id, required this.score, required this.text});

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}
