import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    @Default('') String gadgetImage,
    @Default('Unknown error occurred') String status,
    @Default(false) isSuccess,
    @Default(0) score,
  }) = _PostState;
}
