import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:gam3ity/core/data/error/failures/failure.dart';
import 'package:gam3ity/core/domain/usecases/usecase.dart';
import 'package:gam3ity/features/auth/login/domain/repositories/login_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginUseCase extends UseCase<Future<Either<Failure, bool>>, LoginParams> {
  final LoginRepository _loginRepository;

  LoginUseCase(this._loginRepository);

  @override
  Future<Either<Failure, bool>> call(LoginParams params) async =>
      await _loginRepository.login(params.phoneCode, params.phoneNumber);

}

class LoginParams extends Equatable {
  final String phoneCode;
  final String phoneNumber;

  const LoginParams({required this.phoneCode, required this.phoneNumber});

  @override
  List<Object?> get props => [phoneCode, phoneNumber];
}