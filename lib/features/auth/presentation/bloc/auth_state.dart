part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default('') String networkErrorMessage,
    @Default(false) bool loginSuccess,
    @Default(false) bool isLoading,
    @Default(true) bool obscurePassword,
  }) = _AuthState;

  factory AuthState.initial() => AuthState();
}
