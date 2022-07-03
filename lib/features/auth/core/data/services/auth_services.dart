import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

// typedef
abstract class AuthServices {
  Future<User> loginWithEmailAndPassword(String email, String password);
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
      return user!;
    } on FirebaseAuthException catch (e) {}
  }

  @override
  Future<User> loginWithEmailAndPassword(String email, String password) async =>
      await _signIn(
          () => _auth.signInWithEmailAndPassword(email: email, password: password));
}
