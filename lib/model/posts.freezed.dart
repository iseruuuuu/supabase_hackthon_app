// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
mixin _$Posts {
  int get id => throw _privateConstructorUsedError;
  String get gadgetImage => throw _privateConstructorUsedError;
  String get gadgetName => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get heart => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsCopyWith<Posts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsCopyWith<$Res> {
  factory $PostsCopyWith(Posts value, $Res Function(Posts) then) =
      _$PostsCopyWithImpl<$Res, Posts>;
  @useResult
  $Res call(
      {int id,
      String gadgetImage,
      String gadgetName,
      String comment,
      int score,
      int heart,
      DateTime createdAt,
      String userId});
}

/// @nodoc
class _$PostsCopyWithImpl<$Res, $Val extends Posts>
    implements $PostsCopyWith<$Res> {
  _$PostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gadgetImage = null,
    Object? gadgetName = null,
    Object? comment = null,
    Object? score = null,
    Object? heart = null,
    Object? createdAt = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gadgetImage: null == gadgetImage
          ? _value.gadgetImage
          : gadgetImage // ignore: cast_nullable_to_non_nullable
              as String,
      gadgetName: null == gadgetName
          ? _value.gadgetName
          : gadgetName // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      heart: null == heart
          ? _value.heart
          : heart // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsImplCopyWith<$Res> implements $PostsCopyWith<$Res> {
  factory _$$PostsImplCopyWith(
          _$PostsImpl value, $Res Function(_$PostsImpl) then) =
      __$$PostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String gadgetImage,
      String gadgetName,
      String comment,
      int score,
      int heart,
      DateTime createdAt,
      String userId});
}

/// @nodoc
class __$$PostsImplCopyWithImpl<$Res>
    extends _$PostsCopyWithImpl<$Res, _$PostsImpl>
    implements _$$PostsImplCopyWith<$Res> {
  __$$PostsImplCopyWithImpl(
      _$PostsImpl _value, $Res Function(_$PostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gadgetImage = null,
    Object? gadgetName = null,
    Object? comment = null,
    Object? score = null,
    Object? heart = null,
    Object? createdAt = null,
    Object? userId = null,
  }) {
    return _then(_$PostsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gadgetImage: null == gadgetImage
          ? _value.gadgetImage
          : gadgetImage // ignore: cast_nullable_to_non_nullable
              as String,
      gadgetName: null == gadgetName
          ? _value.gadgetName
          : gadgetName // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      heart: null == heart
          ? _value.heart
          : heart // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsImpl implements _Posts {
  const _$PostsImpl(
      {required this.id,
      required this.gadgetImage,
      required this.gadgetName,
      required this.comment,
      required this.score,
      required this.heart,
      required this.createdAt,
      required this.userId});

  factory _$PostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsImplFromJson(json);

  @override
  final int id;
  @override
  final String gadgetImage;
  @override
  final String gadgetName;
  @override
  final String comment;
  @override
  final int score;
  @override
  final int heart;
  @override
  final DateTime createdAt;
  @override
  final String userId;

  @override
  String toString() {
    return 'Posts(id: $id, gadgetImage: $gadgetImage, gadgetName: $gadgetName, comment: $comment, score: $score, heart: $heart, createdAt: $createdAt, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gadgetImage, gadgetImage) ||
                other.gadgetImage == gadgetImage) &&
            (identical(other.gadgetName, gadgetName) ||
                other.gadgetName == gadgetName) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.heart, heart) || other.heart == heart) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, gadgetImage, gadgetName,
      comment, score, heart, createdAt, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsImplCopyWith<_$PostsImpl> get copyWith =>
      __$$PostsImplCopyWithImpl<_$PostsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsImplToJson(
      this,
    );
  }
}

abstract class _Posts implements Posts {
  const factory _Posts(
      {required final int id,
      required final String gadgetImage,
      required final String gadgetName,
      required final String comment,
      required final int score,
      required final int heart,
      required final DateTime createdAt,
      required final String userId}) = _$PostsImpl;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$PostsImpl.fromJson;

  @override
  int get id;
  @override
  String get gadgetImage;
  @override
  String get gadgetName;
  @override
  String get comment;
  @override
  int get score;
  @override
  int get heart;
  @override
  DateTime get createdAt;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$PostsImplCopyWith<_$PostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
