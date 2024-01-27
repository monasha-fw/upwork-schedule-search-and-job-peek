import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_search_and_job_peek/core/errors/index.dart';

part 'failures.freezed.dart';

@freezed
class Failure<T> with _$Failure<T> {
  /// General failures
  const factory Failure.ignoringFailure() = _IgnoringFailure;

  const factory Failure.formatException(String message) = _FormatException;

  const factory Failure.unableToProcess(String error) = _UnableToProcess;

  const factory Failure.unexpectedError(String message) = _UnexpectedError;

  /// Nested failures
  const factory Failure.authFailure(AuthFailure f) = _AuthFailure;

  const factory Failure.networkFailure(NetworkFailure f) = _NetworkFailure;

  const factory Failure.cacheFailure(CacheFailure f) = _CacheFailure;

  const factory Failure.settingsFailure(SettingsFailure f) = _SettingsFailure;

  const factory Failure.websocketFailure(WebsocketFailure f) = _WebsocketFailure;
}
