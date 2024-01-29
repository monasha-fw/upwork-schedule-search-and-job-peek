import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
class JobModel with _$JobModel {
  const JobModel._();

  const factory JobModel({
    required String id,
    required String service,
    required String jobName,
    required String jobAddress,
    required String jobPostalCode,
    required DateTime startTime,
    required DateTime endTime,
    required String? description,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, dynamic> json) => _$JobModelFromJson(json);

  Job toDomain() {
    return Job(
      id: id,
      service: service,
      location: JobLocation(
        name: jobName,
        address: jobAddress,
        postalCode: jobPostalCode,
      ),
      startTime: startTime,
      endTime: endTime,
      description: description,
    );
  }
}
