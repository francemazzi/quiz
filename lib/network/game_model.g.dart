// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIGameQuery _$APIGameQueryFromJson(Map<String, dynamic> json) => APIGameQuery(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as String,
      startAt: json['startAt'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$APIGameQueryToJson(APIGameQuery instance) =>
    <String, dynamic>{
      'questions': instance.questions,
      'id': instance.id,
      'startAt': instance.startAt,
      'category': instance.category,
      'tags': instance.tags,
    };
