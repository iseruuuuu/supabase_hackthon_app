// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostsImpl _$$PostsImplFromJson(Map<String, dynamic> json) => _$PostsImpl(
      id: json['id'] as int,
      gadgetImage: json['gadgetImage'] as String,
      gadgetName: json['gadgetName'] as String,
      comment: json['comment'] as String,
      score: json['score'] as int,
      heart: json['heart'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$PostsImplToJson(_$PostsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gadgetImage': instance.gadgetImage,
      'gadgetName': instance.gadgetName,
      'comment': instance.comment,
      'score': instance.score,
      'heart': instance.heart,
      'createdAt': instance.createdAt.toIso8601String(),
      'userId': instance.userId,
    };
