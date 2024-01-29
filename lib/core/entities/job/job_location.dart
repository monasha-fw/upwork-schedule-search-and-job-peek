import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_location.freezed.dart';

@freezed
class JobLocation with _$JobLocation {
  const factory JobLocation({
    required String name,
    required String address,
    required String postalCode,
  }) = _JobLocation;
}
