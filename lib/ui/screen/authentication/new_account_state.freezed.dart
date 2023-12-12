// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewAccountState {
  dynamic get loginStatus => throw _privateConstructorUsedError;
  dynamic get number => throw _privateConstructorUsedError;
  dynamic get isSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewAccountStateCopyWith<NewAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewAccountStateCopyWith<$Res> {
  factory $NewAccountStateCopyWith(
          NewAccountState value, $Res Function(NewAccountState) then) =
      _$NewAccountStateCopyWithImpl<$Res, NewAccountState>;
  @useResult
  $Res call({dynamic loginStatus, dynamic number, dynamic isSuccess});
}

/// @nodoc
class _$NewAccountStateCopyWithImpl<$Res, $Val extends NewAccountState>
    implements $NewAccountStateCopyWith<$Res> {
  _$NewAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = freezed,
    Object? number = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      loginStatus: freezed == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewAccountStateImplCopyWith<$Res>
    implements $NewAccountStateCopyWith<$Res> {
  factory _$$NewAccountStateImplCopyWith(_$NewAccountStateImpl value,
          $Res Function(_$NewAccountStateImpl) then) =
      __$$NewAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic loginStatus, dynamic number, dynamic isSuccess});
}

/// @nodoc
class __$$NewAccountStateImplCopyWithImpl<$Res>
    extends _$NewAccountStateCopyWithImpl<$Res, _$NewAccountStateImpl>
    implements _$$NewAccountStateImplCopyWith<$Res> {
  __$$NewAccountStateImplCopyWithImpl(
      _$NewAccountStateImpl _value, $Res Function(_$NewAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = freezed,
    Object? number = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$NewAccountStateImpl(
      loginStatus: freezed == loginStatus ? _value.loginStatus! : loginStatus,
      number: freezed == number ? _value.number! : number,
      isSuccess: freezed == isSuccess ? _value.isSuccess! : isSuccess,
    ));
  }
}

/// @nodoc

class _$NewAccountStateImpl implements _NewAccountState {
  const _$NewAccountStateImpl(
      {this.loginStatus = '', this.number = 1, this.isSuccess = false});

  @override
  @JsonKey()
  final dynamic loginStatus;
  @override
  @JsonKey()
  final dynamic number;
  @override
  @JsonKey()
  final dynamic isSuccess;

  @override
  String toString() {
    return 'NewAccountState(loginStatus: $loginStatus, number: $number, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewAccountStateImpl &&
            const DeepCollectionEquality()
                .equals(other.loginStatus, loginStatus) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loginStatus),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(isSuccess));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewAccountStateImplCopyWith<_$NewAccountStateImpl> get copyWith =>
      __$$NewAccountStateImplCopyWithImpl<_$NewAccountStateImpl>(
          this, _$identity);
}

abstract class _NewAccountState implements NewAccountState {
  const factory _NewAccountState(
      {final dynamic loginStatus,
      final dynamic number,
      final dynamic isSuccess}) = _$NewAccountStateImpl;

  @override
  dynamic get loginStatus;
  @override
  dynamic get number;
  @override
  dynamic get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$NewAccountStateImplCopyWith<_$NewAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
