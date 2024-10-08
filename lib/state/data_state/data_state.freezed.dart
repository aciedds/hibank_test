// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataState<T> {
  T? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateSuccess<T> value)? success,
    TResult? Function(DataStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res, DataState<T>>;
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res, $Val extends DataState<T>>
    implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataStateSuccessImplCopyWith<T, $Res> {
  factory _$$DataStateSuccessImplCopyWith(_$DataStateSuccessImpl<T> value,
          $Res Function(_$DataStateSuccessImpl<T>) then) =
      __$$DataStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DataStateSuccessImplCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$DataStateSuccessImpl<T>>
    implements _$$DataStateSuccessImplCopyWith<T, $Res> {
  __$$DataStateSuccessImplCopyWithImpl(_$DataStateSuccessImpl<T> _value,
      $Res Function(_$DataStateSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataStateSuccessImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataStateSuccessImpl<T> implements DataStateSuccess<T> {
  const _$DataStateSuccessImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'DataState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateSuccessImplCopyWith<T, _$DataStateSuccessImpl<T>> get copyWith =>
      __$$DataStateSuccessImplCopyWithImpl<T, _$DataStateSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)
        error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateSuccess<T> value)? success,
    TResult? Function(DataStateError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DataStateSuccess<T> implements DataState<T> {
  const factory DataStateSuccess({required final T data}) =
      _$DataStateSuccessImpl<T>;

  @override
  T get data;
  @JsonKey(ignore: true)
  _$$DataStateSuccessImplCopyWith<T, _$DataStateSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataStateErrorImplCopyWith<T, $Res> {
  factory _$$DataStateErrorImplCopyWith(_$DataStateErrorImpl<T> value,
          $Res Function(_$DataStateErrorImpl<T>) then) =
      __$$DataStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call(
      {String message,
      T? data,
      dynamic exception,
      StackTrace? stackTrace,
      String? statusCode});
}

/// @nodoc
class __$$DataStateErrorImplCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$DataStateErrorImpl<T>>
    implements _$$DataStateErrorImplCopyWith<T, $Res> {
  __$$DataStateErrorImplCopyWithImpl(_$DataStateErrorImpl<T> _value,
      $Res Function(_$DataStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = freezed,
    Object? exception = freezed,
    Object? stackTrace = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$DataStateErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DataStateErrorImpl<T> implements DataStateError<T> {
  const _$DataStateErrorImpl(
      {this.message = 'Something Went Wrong',
      this.data,
      this.exception,
      this.stackTrace,
      this.statusCode});

  @override
  @JsonKey()
  final String message;
  @override
  final T? data;
  @override
  final dynamic exception;
  @override
  final StackTrace? stackTrace;
  @override
  final String? statusCode;

  @override
  String toString() {
    return 'DataState<$T>.error(message: $message, data: $data, exception: $exception, stackTrace: $stackTrace, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateErrorImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(exception),
      stackTrace,
      statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateErrorImplCopyWith<T, _$DataStateErrorImpl<T>> get copyWith =>
      __$$DataStateErrorImplCopyWithImpl<T, _$DataStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)
        error,
  }) {
    return error(message, data, exception, stackTrace, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
  }) {
    return error?.call(message, data, exception, stackTrace, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, data, exception, stackTrace, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateSuccess<T> value)? success,
    TResult? Function(DataStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DataStateError<T> implements DataState<T> {
  const factory DataStateError(
      {final String message,
      final T? data,
      final dynamic exception,
      final StackTrace? stackTrace,
      final String? statusCode}) = _$DataStateErrorImpl<T>;

  String get message;
  @override
  T? get data;
  dynamic get exception;
  StackTrace? get stackTrace;
  String? get statusCode;
  @JsonKey(ignore: true)
  _$$DataStateErrorImplCopyWith<T, _$DataStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
