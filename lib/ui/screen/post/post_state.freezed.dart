// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostState {
  String get gadgetImage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  dynamic get isSuccess => throw _privateConstructorUsedError;
  dynamic get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call(
      {String gadgetImage, String status, dynamic isSuccess, dynamic score});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gadgetImage = null,
    Object? status = null,
    Object? isSuccess = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      gadgetImage: null == gadgetImage
          ? _value.gadgetImage
          : gadgetImage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostStateImplCopyWith<$Res>
    implements $PostStateCopyWith<$Res> {
  factory _$$PostStateImplCopyWith(
          _$PostStateImpl value, $Res Function(_$PostStateImpl) then) =
      __$$PostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String gadgetImage, String status, dynamic isSuccess, dynamic score});
}

/// @nodoc
class __$$PostStateImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostStateImpl>
    implements _$$PostStateImplCopyWith<$Res> {
  __$$PostStateImplCopyWithImpl(
      _$PostStateImpl _value, $Res Function(_$PostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gadgetImage = null,
    Object? status = null,
    Object? isSuccess = freezed,
    Object? score = freezed,
  }) {
    return _then(_$PostStateImpl(
      gadgetImage: null == gadgetImage
          ? _value.gadgetImage
          : gadgetImage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: freezed == isSuccess ? _value.isSuccess! : isSuccess,
      score: freezed == score ? _value.score! : score,
    ));
  }
}

/// @nodoc

class _$PostStateImpl implements _PostState {
  const _$PostStateImpl(
      {this.gadgetImage = '',
      this.status = 'Error: Your post lacks necessary information',
      this.isSuccess = false,
      this.score = 0});

  @override
  @JsonKey()
  final String gadgetImage;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final dynamic isSuccess;
  @override
  @JsonKey()
  final dynamic score;

  @override
  String toString() {
    return 'PostState(gadgetImage: $gadgetImage, status: $status, isSuccess: $isSuccess, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateImpl &&
            (identical(other.gadgetImage, gadgetImage) ||
                other.gadgetImage == gadgetImage) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gadgetImage,
      status,
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      __$$PostStateImplCopyWithImpl<_$PostStateImpl>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {final String gadgetImage,
      final String status,
      final dynamic isSuccess,
      final dynamic score}) = _$PostStateImpl;

  @override
  String get gadgetImage;
  @override
  String get status;
  @override
  dynamic get isSuccess;
  @override
  dynamic get score;
  @override
  @JsonKey(ignore: true)
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
