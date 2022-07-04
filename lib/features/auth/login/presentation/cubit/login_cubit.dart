import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gam3ity/core/data/error/failures/authentication_failure.dart';
import 'package:gam3ity/core/data/error/failures/client_failure.dart';
import 'package:gam3ity/features/auth/login/domain/use_cases/login_use_case.dart';
import 'package:gam3ity/features/auth/login/presentation/cubit/login_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase _loginUseCase;

  LoginCubit(this._loginUseCase) : super(const LoginState.initial());

  Future<void> login(String phoneCode, String phoneNumber) async {
    emit(const LoginState.loading());
    final result = await _loginUseCase(
      LoginParams(
        phoneCode: phoneCode,
        phoneNumber: phoneNumber,
      ),
    );
    emit(
      result.fold(
        (failure) {
          if (failure is ClientFailure) {
            return const LoginState.noNetwork();
          } else {
            final message = (failure as AuthenticationFailure).message;
            return LoginState.error(message: message);
          }
        },
        (right) => const LoginState.loginSuccess(),
      ),
    );
  }
}
