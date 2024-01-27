import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  // const factory AuthFailure.tokenExpired() = TokenExpired;
  // const factory AuthFailure.emailVerificationFailed() = EmailVerificationFailed;
  // const factory AuthFailure.passwordResetFailed() = PasswordResetFailed;
  const factory AuthFailure.validationFailed(String error) = ValidationFailed;
}
