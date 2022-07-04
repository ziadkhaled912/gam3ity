import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;

  const factory LoginState.loading() = Loading;

  const factory LoginState.loginSuccess() = LoginSuccess;

  const factory LoginState.error({required String message}) = Error;

  const factory LoginState.noNetwork() = NoNetwork;
}
