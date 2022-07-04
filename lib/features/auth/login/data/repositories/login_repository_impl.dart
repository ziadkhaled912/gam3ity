import 'package:dartz/dartz.dart';
import 'package:gam3ity/core/data/error/exceptions/application_exception.dart';
import 'package:gam3ity/core/data/error/exceptions/firebase_auth_exception.dart';
import 'package:gam3ity/core/data/error/failures/authentication_failure.dart';
import 'package:gam3ity/core/data/error/failures/client_failure.dart';
import 'package:gam3ity/core/data/error/failures/failure.dart';
import 'package:gam3ity/core/data/network/network_info.dart';
import 'package:gam3ity/features/auth/core/data/data_sources/auth_remote_data_source.dart';
import 'package:gam3ity/features/auth/login/domain/repositories/login_repository.dart';
import 'package:gam3ity/generated/l10n.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl extends LoginRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final NetworkInfo _networkInfo;

  LoginRepositoryImpl(this._authRemoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, bool>> login(String phoneCode, String phoneNumber) async {
    if(await _networkInfo.isConnected) {
      try {
        await _authRemoteDataSource.loginWithPhone("$phoneCode$phoneNumber");
        return const Right(true);
      } on FirebaseServicesException catch(e) {
        return Left(AuthenticationFailure.login(message: e.message));
      } on ApplicationException catch(e) {
        return Left(AuthenticationFailure.unknown(message: S.current.somethingWentWrong));
      }
    } else {
      return const Left(ClientFailure.networkError(message: "Network error"));
    }
  }
}
