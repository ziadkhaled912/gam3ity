import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gam3ity/core/data/error/exceptions/application_exception.dart';

part 'firebase_auth_exception.freezed.dart';

@freezed
abstract class FirebaseServicesException extends ApplicationException
    with _$FirebaseServicesException {
  const factory FirebaseServicesException.unknown({required String message}) = Unknown;

  const factory FirebaseServicesException.internalError({required String message}) =
      InternalError;

  const factory FirebaseServicesException.invalidPhoneNumber(
      {required String message}) = InvalidPhoneNumber;

  const factory FirebaseServicesException.phoneNumberAlreadyExists(
      {required String message}) = PhoneNumberAlreadyExists;
}
