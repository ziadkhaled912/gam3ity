import 'package:firebase_auth/firebase_auth.dart';
import 'package:gam3ity/core/data/error/exceptions/firebase_auth_exception.dart';
import 'package:gam3ity/generated/l10n.dart';
import 'package:injectable/injectable.dart';

// typedef
abstract class AuthServices {
  Future<bool> loginWithPhone(String phone);
}

typedef SignInMethod = Future<UserCredential> Function();

@LazySingleton(as: AuthServices)
class AuthServicesImpl extends AuthServices {
  final FirebaseAuth _auth;

  AuthServicesImpl(this._auth);

  Future<User> _signIn(SignInMethod signInMethod) async {
    try {
      final result = await signInMethod();
      final user = result.user;
      if(user != null) {
        return user;
      } else {
        throw const FirebaseServicesException.unknown(message: "unknown error");
      }
    } on FirebaseAuthException catch (e) {
      throw _firebaseAuthExceptionHandler(e);
    }
  }

  @override
  Future<bool> loginWithPhone(String phone) async {
    try {
      await _auth.signInWithPhoneNumber(phone);
      return true;
    } on FirebaseAuthException catch (e) {
      throw _firebaseAuthExceptionHandler(e);
    } catch (e) {
      throw const FirebaseServicesException.unknown(message: "unknown error");
    }
  }

  // internal-error
  // invalid-phone-number
  // phone-number-already-exists
  // user-not-found
  FirebaseServicesException _firebaseAuthExceptionHandler(FirebaseAuthException e) {
    if(e.code == "invalid-phone-number") {
      return FirebaseServicesException.invalidPhoneNumber(message: e.message ?? S.current.mobileNumberValidation);
    } else if (e.code == "phone-number-already-exists") {
      return FirebaseServicesException.phoneNumberAlreadyExists(message: e.message ?? S.current.thePhoneIsUsedBefore);
    } else if(e.code == "internal-error") {
      return FirebaseServicesException.internalError(message: e.message ?? "Internal error");
    } else {
      return FirebaseServicesException.unknown(message: e.message ?? "unknown error");
    }
  }
}
