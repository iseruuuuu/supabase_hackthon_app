// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_post_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailPostStateImpl _$$DetailPostStateImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailPostStateImpl(
      status: json['status'] as String? ?? '',
      heart: json['heart'] ?? 0,
      isSuccess: json['isSuccess'] ?? false,
    );

Map<String, dynamic> _$$DetailPostStateImplToJson(
        _$DetailPostStateImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'heart': instance.heart,
      'isSuccess': instance.isSuccess,
    };
