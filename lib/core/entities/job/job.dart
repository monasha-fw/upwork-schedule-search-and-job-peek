import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';

@freezed
class Job with _$Job {
  const factory Job({
    required String id,
  }) = _Job;
}
