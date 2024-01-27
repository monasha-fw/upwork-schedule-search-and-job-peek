import 'package:schedule_search_and_job_peek/core/value_objects/index.dart';
import 'package:schedule_search_and_job_peek/i18n/translations.g.dart';

extension ValueObjectValidator on ValueObject {
  String? validateField(String field) =>
      isValid() ? null : t.errors.common.fields.input(field: field);
}
