part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default('') String networkMessage,
    @Default(false) bool loginSuccess,
    @Default(false) bool signUpSuccess,
    @Default(false) bool isLogInLoading,
    @Default(false) bool isSignUpLoading,
    @Default(true) bool obscurePassword,
  }) = _AuthState;

  factory AuthState.initial() => AuthState();
}
