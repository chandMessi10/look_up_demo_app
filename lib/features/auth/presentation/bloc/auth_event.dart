part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginSubmitted(
    String email,
    password,
    BuildContext context,
  ) = _LoginSubmitted;

  const factory AuthEvent.createUserSubmitted(
    String name,
    email,
    password,
    BuildContext context,
  ) = _CreateUserSubmitted;

  const factory AuthEvent.togglePasswordVisibility() =
      _TogglePasswordVisibility;
}
