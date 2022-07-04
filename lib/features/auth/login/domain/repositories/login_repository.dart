import 'package:dartz/dartz.dart';
import 'package:gam3ity/core/data/error/failures/failure.dart';
import 'package:gam3ity/features/auth/core/domain/entities/User.dart';

abstract class LoginRepository {
  Future<Either<Failure, bool>> login(String phoneCode, String phoneNumber);
}