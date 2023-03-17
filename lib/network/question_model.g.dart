// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    QuestionModel(
      id: json['id'] as String,
      index: json['index'] as int,
      text: json['text'] as String,
      level: json['level'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionModelToJson(QuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'text': instance.text,
      'level': instance.level,
      'answers': instance.answers,
    };

Answer _$AnswerFromJson(Map<String, dynamic> json) => Answer(
      id: json['id'] as int,
      score: json['score'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$AnswerToJson(Answer instance) => <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'text': instance.text,
    };
