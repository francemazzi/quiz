// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIGameQuery _$APIGameQueryFromJson(Map<String, dynamic> json) => APIGameQuery(
      questionsGame: (json['questionsGame'] as List<dynamic>)
          .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
      startAt: json['startAt'] as String,
      category: json['category'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$APIGameQueryToJson(APIGameQuery instance) =>
    <String, dynamic>{
      'questionsGame': instance.questionsGame,
      'id': instance.id,
      'startAt': instance.startAt,
      'category': instance.category,
      'tags': instance.tags,
    };
