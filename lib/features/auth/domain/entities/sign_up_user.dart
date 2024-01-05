import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_user.freezed.dart';

part 'sign_up_user.g.dart';

@freezed
class SignUpUser with _$SignUpUser {
  ///
  factory SignUpUser({
    required String email,
    required String id,
    required String joined,
    required String name,
    required String role,
  }) = _SignUpUser;

  /// Convert a JSON object into an [SignUpUser] instance.
  /// This enables type-safe reading of the API response.
  factory SignUpUser.fromJson(Map<String, dynamic> json) => _$SignUpUserFromJson(json);
}
