// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firebase_auth_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseServicesException {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidPhoneNumber,
    required TResult Function(String message) phoneNumberAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(PhoneNumberAlreadyExists value)
        phoneNumberAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseServicesExceptionCopyWith<FirebaseServicesException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseServicesExceptionCopyWith<$Res> {
  factory $FirebaseServicesExceptionCopyWith(FirebaseServicesException value,
          $Res Function(FirebaseServicesException) then) =
      _$FirebaseServicesExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  _$FirebaseServicesExceptionCopyWithImpl(this._value, this._then);

  final FirebaseServicesException _value;
  // ignore: unused_field
  final $Res Function(FirebaseServicesException) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res>
    extends _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, (v) => _then(v as _$Unknown));

  @override
  _$Unknown get _value => super._value as _$Unknown;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Unknown(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseServicesException.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unknown &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      __$$UnknownCopyWithImpl<_$Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidPhoneNumber,
    required TResult Function(String message) phoneNumberAlreadyExists,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(PhoneNumberAlreadyExists value)
        phoneNumberAlreadyExists,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements FirebaseServicesException {
  const factory Unknown({required final String message}) = _$Unknown;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalErrorCopyWith<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  factory _$$InternalErrorCopyWith(
          _$InternalError value, $Res Function(_$InternalError) then) =
      __$$InternalErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$InternalErrorCopyWithImpl<$Res>
    extends _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements _$$InternalErrorCopyWith<$Res> {
  __$$InternalErrorCopyWithImpl(
      _$InternalError _value, $Res Function(_$InternalError) _then)
      : super(_value, (v) => _then(v as _$InternalError));

  @override
  _$InternalError get _value => super._value as _$InternalError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InternalError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InternalError implements InternalError {
  const _$InternalError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseServicesException.internalError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$InternalErrorCopyWith<_$InternalError> get copyWith =>
      __$$InternalErrorCopyWithImpl<_$InternalError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidPhoneNumber,
    required TResult Function(String message) phoneNumberAlreadyExists,
  }) {
    return internalError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
  }) {
    return internalError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(PhoneNumberAlreadyExists value)
        phoneNumberAlreadyExists,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalError implements FirebaseServicesException {
  const factory InternalError({required final String message}) =
      _$InternalError;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InternalErrorCopyWith<_$InternalError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPhoneNumberCopyWith<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  factory _$$InvalidPhoneNumberCopyWith(_$InvalidPhoneNumber value,
          $Res Function(_$InvalidPhoneNumber) then) =
      __$$InvalidPhoneNumberCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements _$$InvalidPhoneNumberCopyWith<$Res> {
  __$$InvalidPhoneNumberCopyWithImpl(
      _$InvalidPhoneNumber _value, $Res Function(_$InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as _$InvalidPhoneNumber));

  @override
  _$InvalidPhoneNumber get _value => super._value as _$InvalidPhoneNumber;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidPhoneNumber(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneNumber implements InvalidPhoneNumber {
  const _$InvalidPhoneNumber({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseServicesException.invalidPhoneNumber(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPhoneNumber &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$InvalidPhoneNumberCopyWith<_$InvalidPhoneNumber> get copyWith =>
      __$$InvalidPhoneNumberCopyWithImpl<_$InvalidPhoneNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidPhoneNumber,
    required TResult Function(String message) phoneNumberAlreadyExists,
  }) {
    return invalidPhoneNumber(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
  }) {
    return invalidPhoneNumber?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(PhoneNumberAlreadyExists value)
        phoneNumberAlreadyExists,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber implements FirebaseServicesException {
  const factory InvalidPhoneNumber({required final String message}) =
      _$InvalidPhoneNumber;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidPhoneNumberCopyWith<_$InvalidPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberAlreadyExistsCopyWith<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  factory _$$PhoneNumberAlreadyExistsCopyWith(_$PhoneNumberAlreadyExists value,
          $Res Function(_$PhoneNumberAlreadyExists) then) =
      __$$PhoneNumberAlreadyExistsCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$PhoneNumberAlreadyExistsCopyWithImpl<$Res>
    extends _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements _$$PhoneNumberAlreadyExistsCopyWith<$Res> {
  __$$PhoneNumberAlreadyExistsCopyWithImpl(_$PhoneNumberAlreadyExists _value,
      $Res Function(_$PhoneNumberAlreadyExists) _then)
      : super(_value, (v) => _then(v as _$PhoneNumberAlreadyExists));

  @override
  _$PhoneNumberAlreadyExists get _value =>
      super._value as _$PhoneNumberAlreadyExists;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PhoneNumberAlreadyExists(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberAlreadyExists implements PhoneNumberAlreadyExists {
  const _$PhoneNumberAlreadyExists({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseServicesException.phoneNumberAlreadyExists(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberAlreadyExists &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$PhoneNumberAlreadyExistsCopyWith<_$PhoneNumberAlreadyExists>
      get copyWith =>
          __$$PhoneNumberAlreadyExistsCopyWithImpl<_$PhoneNumberAlreadyExists>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidPhoneNumber,
    required TResult Function(String message) phoneNumberAlreadyExists,
  }) {
    return phoneNumberAlreadyExists(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
  }) {
    return phoneNumberAlreadyExists?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidPhoneNumber,
    TResult Function(String message)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) {
    if (phoneNumberAlreadyExists != null) {
      return phoneNumberAlreadyExists(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(PhoneNumberAlreadyExists value)
        phoneNumberAlreadyExists,
  }) {
    return phoneNumberAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
  }) {
    return phoneNumberAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(PhoneNumberAlreadyExists value)? phoneNumberAlreadyExists,
    required TResult orElse(),
  }) {
    if (phoneNumberAlreadyExists != null) {
      return phoneNumberAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberAlreadyExists implements FirebaseServicesException {
  const factory PhoneNumberAlreadyExists({required final String message}) =
      _$PhoneNumberAlreadyExists;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$PhoneNumberAlreadyExistsCopyWith<_$PhoneNumberAlreadyExists>
      get copyWith => throw _privateConstructorUsedError;
}
