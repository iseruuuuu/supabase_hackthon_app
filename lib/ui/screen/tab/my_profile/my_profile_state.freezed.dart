// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String name, String userName,
            String selfIntroduce, String image, int length)
        data,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String name, String userName, String selfIntroduce,
            String image, int length)?
        data,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String name, String userName, String selfIntroduce,
            String image, int length)?
        data,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyProfileStateLoading value) loading,
    required TResult Function(_MyProfileStateData value) data,
    required TResult Function(MyProfileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyProfileStateLoading value)? loading,
    TResult? Function(_MyProfileStateData value)? data,
    TResult? Function(MyProfileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyProfileStateLoading value)? loading,
    TResult Function(_MyProfileStateData value)? data,
    TResult Function(MyProfileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfileStateCopyWith<$Res> {
  factory $MyProfileStateCopyWith(
          MyProfileState value, $Res Function(MyProfileState) then) =
      _$MyProfileStateCopyWithImpl<$Res, MyProfileState>;
}

/// @nodoc
class _$MyProfileStateCopyWithImpl<$Res, $Val extends MyProfileState>
    implements $MyProfileStateCopyWith<$Res> {
  _$MyProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MyProfileStateLoadingImplCopyWith<$Res> {
  factory _$$MyProfileStateLoadingImplCopyWith(
          _$MyProfileStateLoadingImpl value,
          $Res Function(_$MyProfileStateLoadingImpl) then) =
      __$$MyProfileStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyProfileStateLoadingImplCopyWithImpl<$Res>
    extends _$MyProfileStateCopyWithImpl<$Res, _$MyProfileStateLoadingImpl>
    implements _$$MyProfileStateLoadingImplCopyWith<$Res> {
  __$$MyProfileStateLoadingImplCopyWithImpl(_$MyProfileStateLoadingImpl _value,
      $Res Function(_$MyProfileStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyProfileStateLoadingImpl
    with DiagnosticableTreeMixin
    implements MyProfileStateLoading {
  const _$MyProfileStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProfileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MyProfileState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProfileStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String name, String userName,
            String selfIntroduce, String image, int length)
        data,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String name, String userName, String selfIntroduce,
            String image, int length)?
        data,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String name, String userName, String selfIntroduce,
            String image, int length)?
        data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyProfileStateLoading value) loading,
    required TResult Function(_MyProfileStateData value) data,
    required TResult Function(MyProfileStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyProfileStateLoading value)? loading,
    TResult? Function(_MyProfileStateData value)? data,
    TResult? Function(MyProfileStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyProfileStateLoading value)? loading,
    TResult Function(_MyProfileStateData value)? data,
    TResult Function(MyProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MyProfileStateLoading implements MyProfileState {
  const factory MyProfileStateLoading() = _$MyProfileStateLoadingImpl;
}

/// @nodoc
abstract class _$$MyProfileStateDataImplCopyWith<$Res> {
  factory _$$MyProfileStateDataImplCopyWith(_$MyProfileStateDataImpl value,
          $Res Function(_$MyProfileStateDataImpl) then) =
      __$$MyProfileStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String userName,
      String selfIntroduce,
      String image,
      int length});
}

/// @nodoc
class __$$MyProfileStateDataImplCopyWithImpl<$Res>
    extends _$MyProfileStateCopyWithImpl<$Res, _$MyProfileStateDataImpl>
    implements _$$MyProfileStateDataImplCopyWith<$Res> {
  __$$MyProfileStateDataImplCopyWithImpl(_$MyProfileStateDataImpl _value,
      $Res Function(_$MyProfileStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userName = null,
    Object? selfIntroduce = null,
    Object? image = null,
    Object? length = null,
  }) {
    return _then(_$MyProfileStateDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      selfIntroduce: null == selfIntroduce
          ? _value.selfIntroduce
          : selfIntroduce // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MyProfileStateDataImpl
    with DiagnosticableTreeMixin
    implements _MyProfileStateData {
  const _$MyProfileStateDataImpl(
      {required this.name,
      required this.userName,
      required this.selfIntroduce,
      required this.image,
      required this.length});

  @override
  final String name;
  @override
  final String userName;
  @override
  final String selfIntroduce;
  @override
  final String image;
  @override
  final int length;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProfileState.data(name: $name, userName: $userName, selfIntroduce: $selfIntroduce, image: $image, length: $length)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyProfileState.data'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('selfIntroduce', selfIntroduce))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('length', length));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProfileStateDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.selfIntroduce, selfIntroduce) ||
                other.selfIntroduce == selfIntroduce) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, userName, selfIntroduce, image, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyProfileStateDataImplCopyWith<_$MyProfileStateDataImpl> get copyWith =>
      __$$MyProfileStateDataImplCopyWithImpl<_$MyProfileStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String name, String userName,
            String selfIntroduce, String image, int length)
        data,
    required TResult Function() error,
  }) {
    return data(name, userName, selfIntroduce, image, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String name, String userName, String selfIntroduce,
            String image, int length)?
        data,
    TResult? Function()? error,
  }) {
    return data?.call(name, userName, selfIntroduce, image, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String name, String userName, String selfIntroduce,
            String image, int length)?
        data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(name, userName, selfIntroduce, image, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyProfileStateLoading value) loading,
    required TResult Function(_MyProfileStateData value) data,
    required TResult Function(MyProfileStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyProfileStateLoading value)? loading,
    TResult? Function(_MyProfileStateData value)? data,
    TResult? Function(MyProfileStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyProfileStateLoading value)? loading,
    TResult Function(_MyProfileStateData value)? data,
    TResult Function(MyProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _MyProfileStateData implements MyProfileState {
  const factory _MyProfileStateData(
      {required final String name,
      required final String userName,
      required final String selfIntroduce,
      required final String image,
      required final int length}) = _$MyProfileStateDataImpl;

  String get name;
  String get userName;
  String get selfIntroduce;
  String get image;
  int get length;
  @JsonKey(ignore: true)
  _$$MyProfileStateDataImplCopyWith<_$MyProfileStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyProfileStateErrorImplCopyWith<$Res> {
  factory _$$MyProfileStateErrorImplCopyWith(_$MyProfileStateErrorImpl value,
          $Res Function(_$MyProfileStateErrorImpl) then) =
      __$$MyProfileStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyProfileStateErrorImplCopyWithImpl<$Res>
    extends _$MyProfileStateCopyWithImpl<$Res, _$MyProfileStateErrorImpl>
    implements _$$MyProfileStateErrorImplCopyWith<$Res> {
  __$$MyProfileStateErrorImplCopyWithImpl(_$MyProfileStateErrorImpl _value,
      $Res Function(_$MyProfileStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyProfileStateErrorImpl
    with DiagnosticableTreeMixin
    implements MyProfileStateError {
  const _$MyProfileStateErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProfileState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MyProfileState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProfileStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String name, String userName,
            String selfIntroduce, String image, int length)
        data,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String name, String userName, String selfIntroduce,
            String image, int length)?
        data,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String name, String userName, String selfIntroduce,
            String image, int length)?
        data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyProfileStateLoading value) loading,
    required TResult Function(_MyProfileStateData value) data,
    required TResult Function(MyProfileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyProfileStateLoading value)? loading,
    TResult? Function(_MyProfileStateData value)? data,
    TResult? Function(MyProfileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyProfileStateLoading value)? loading,
    TResult Function(_MyProfileStateData value)? data,
    TResult Function(MyProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MyProfileStateError implements MyProfileState {
  const factory MyProfileStateError() = _$MyProfileStateErrorImpl;
}
