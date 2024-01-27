import 'package:fpdart/fpdart.dart';
import 'package:schedule_search_and_job_peek/core/errors/index.dart';
import 'package:schedule_search_and_job_peek/core/value_objects/index.dart';

// part 'patient/parent.dart';
// part 'patient/patient.dart';
// part 'refractions/refraction.dart';
// part 'refractions/refraction_type.dart';

class IntId extends ValueObject<int?> {
  @override
  final Either<ValueFailure<int?>, int?> value;

  factory IntId(int? input) {
    return IntId._(validateIntId(input));
  }

  const IntId._(this.value);
}

class StringId extends ValueObject<String?> {
  @override
  final Either<ValueFailure<String?>, String?> value;

  factory StringId(String? input) {
    return StringId._(validateStringId(input));
  }

  const StringId._(this.value);
}
