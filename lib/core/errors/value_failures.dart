import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  // common
  const factory ValueFailure.invalidCreatedDate({required T failedValue}) = InvalidCreatedDate;

  const factory ValueFailure.invalidUpdatedDate({required T failedValue}) = InvalidUpdatedDate;

  const factory ValueFailure.invalidStringId({required T failedValue}) = InvalidStringId;

  const factory ValueFailure.invalidIntId({required T failedValue}) = InvalidIntId;

  const factory ValueFailure.invalidNameField({required T failedValue}) = InvalidNameField;

  const factory ValueFailure.invalidParentId({required T failedValue}) = InvalidParentId;

  const factory ValueFailure.invalidGender({required T failedValue}) = InvalidGender;

  const factory ValueFailure.invalidEthnicity({required T failedValue}) = InvalidEthnicity;

  const factory ValueFailure.invalidBirthdate({required T failedValue}) = InvalidBirthdate;

  const factory ValueFailure.invalidParentRefraction({required T failedValue}) =
      InvalidParentRefraction;

  const factory ValueFailure.invalidRefractionVCC({required T failedValue}) = InvalidRefractionVCC;

  const factory ValueFailure.invalidRefractionSphere({required T failedValue}) =
      InvalidRefractionSphere;

  const factory ValueFailure.invalidRefractionCylinder({required T failedValue}) =
      InvalidRefractionCylinder;

  const factory ValueFailure.invalidRefractionAxis({required T failedValue}) =
      InvalidRefractionAxis;

  const factory ValueFailure.invalidRefractionVA({required T failedValue}) = InvalidRefractionVA;

  // RefractionType
  const factory ValueFailure.invalidRefractionTypeLabel({required T failedValue}) =
      InvalidRefractionTypeLabel;

  const factory ValueFailure.invalidRefractionTypeValue({required T failedValue}) =
      InvalidRefractionTypeValue;
}
