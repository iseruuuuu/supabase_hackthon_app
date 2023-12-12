import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts.freezed.dart';

part 'posts.g.dart';

@freezed
abstract class Posts with _$Posts {
  const factory Posts({
    required int id,
    required String gadgetImage,
    required String gadgetName,
    required String comment,
    required int score,
    required int heart,
    required DateTime createdAt,
    required String userId,
  }) = _Posts;

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}
