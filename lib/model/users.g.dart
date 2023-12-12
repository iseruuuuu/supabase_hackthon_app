// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersImpl _$$UsersImplFromJson(Map<String, dynamic> json) => _$UsersImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      userName: json['userName'] as String,
      selfIntroduce: json['selfIntroduce'] as String,
      image: json['image'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updateTime: DateTime.parse(json['updateTime'] as String),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$UsersImplToJson(_$UsersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userName': instance.userName,
      'selfIntroduce': instance.selfIntroduce,
      'image': instance.image,
      'createdAt': instance.createdAt.toIso8601String(),
      'updateTime': instance.updateTime.toIso8601String(),
      'userId': instance.userId,
    };
