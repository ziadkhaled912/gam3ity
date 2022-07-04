import 'package:gam3ity/features/auth/core/data/data_sources/auth_remote_data_source.dart';
import 'package:gam3ity/features/auth/core/data/services/auth_services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final AuthServices _authServices;

  AuthRemoteDataSourceImpl(this._authServices);

  @override
  Future<bool> loginWithPhone(String phoneNumber) async =>
      _authServices.loginWithPhone(phoneNumber);
}
