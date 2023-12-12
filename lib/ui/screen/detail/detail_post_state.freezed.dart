// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailPostState _$DetailPostStateFromJson(Map<String, dynamic> json) {
  return _DetailPostState.fromJson(json);
}

/// @nodoc
mixin _$DetailPostState {
  String get status => throw _privateConstructorUsedError;
  dynamic get heart => throw _privateConstructorUsedError;
  dynamic get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailPostStateCopyWith<DetailPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPostStateCopyWith<$Res> {
  factory $DetailPostStateCopyWith(
          DetailPostState value, $Res Function(DetailPostState) then) =
      _$DetailPostStateCopyWithImpl<$Res, DetailPostState>;
  @useResult
  $Res call({String status, dynamic heart, dynamic isSuccess});
}

/// @nodoc
class _$DetailPostStateCopyWithImpl<$Res, $Val extends DetailPostState>
    implements $DetailPostStateCopyWith<$Res> {
  _$DetailPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? heart = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      heart: freezed == heart
          ? _value.heart
          : heart // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailPostStateImplCopyWith<$Res>
    implements $DetailPostStateCopyWith<$Res> {
  factory _$$DetailPostStateImplCopyWith(_$DetailPostStateImpl value,
          $Res Function(_$DetailPostStateImpl) then) =
      __$$DetailPostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, dynamic heart, dynamic isSuccess});
}

/// @nodoc
class __$$DetailPostStateImplCopyWithImpl<$Res>
    extends _$DetailPostStateCopyWithImpl<$Res, _$DetailPostStateImpl>
    implements _$$DetailPostStateImplCopyWith<$Res> {
  __$$DetailPostStateImplCopyWithImpl(
      _$DetailPostStateImpl _value, $Res Function(_$DetailPostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? heart = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$DetailPostStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      heart: freezed == heart ? _value.heart! : heart,
      isSuccess: freezed == isSuccess ? _value.isSuccess! : isSuccess,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailPostStateImpl implements _DetailPostState {
  const _$DetailPostStateImpl(
      {this.status = '', this.heart = 0, this.isSuccess = false});

  factory _$DetailPostStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailPostStateImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final dynamic heart;
  @override
  @JsonKey()
  final dynamic isSuccess;

  @override
  String toString() {
    return 'DetailPostState(status: $status, heart: $heart, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPostStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.heart, heart) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(heart),
      const DeepCollectionEquality().hash(isSuccess));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPostStateImplCopyWith<_$DetailPostStateImpl> get copyWith =>
      __$$DetailPostStateImplCopyWithImpl<_$DetailPostStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailPostStateImplToJson(
      this,
    );
  }
}

abstract class _DetailPostState implements DetailPostState {
  const factory _DetailPostState(
      {final String status,
      final dynamic heart,
      final dynamic isSuccess}) = _$DetailPostStateImpl;

  factory _DetailPostState.fromJson(Map<String, dynamic> json) =
      _$DetailPostStateImpl.fromJson;

  @override
  String get status;
  @override
  dynamic get heart;
  @override
  dynamic get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$DetailPostStateImplCopyWith<_$DetailPostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
