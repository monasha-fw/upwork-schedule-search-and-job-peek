import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failures.freezed.dart';

@freezed
class SettingsFailure with _$SettingsFailure {
  const factory SettingsFailure.unsupportedVersion({
    required int appVersion,
    required int serverVersion,
  }) = UnsupportedVersion;
}
