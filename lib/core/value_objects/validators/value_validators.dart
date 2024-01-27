import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:schedule_search_and_job_peek/core/errors/index.dart';

extension NullableStringFieldValidations on String? {
  bool get isValidString {
    return this == null || (this != null && this!.isNotEmpty);
  }

  bool get isValidNullableStringField {
    return this == null || (this != null && this!.isNotEmpty && this!.characters.length > 2);
  }

  bool get isValidStringField {
    return this != null && this!.isNotEmpty && this!.characters.length > 2;
  }

  bool get isValidId => this?.isValidString ?? false;
}

extension IntFieldValidations on int {
  /// Valid years ranges between,
  /// `100 years ago from now` and `10 years from now`
  bool get isValidYear {
    return this > DateTime.now().subtract(const Duration(days: 365 * 100)).year &&
        this < DateTime.now().add(const Duration(days: 365 * 10)).year;
  }

  bool get isValidMonth => this > 0 && this < 13;
}

extension NullableIntFieldValidations on int? {
  bool get isValidId => this != null && this! > 0 && this! < 2147483647;
}

extension DateTimeFieldValidations on DateTime? {
  // TODO
  bool get validateCreatedDate => true;

  // TODO
  bool get validateUpdatedDate => true;
}

// common
Either<ValueFailure<int?>, int?> validateIntId(int? input) {
  if (input.isValidId) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidIntId(failedValue: input));
  }
}

Either<ValueFailure<String?>, String?> validateStringId(String? input) {
  if (input.isValidId) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidStringId(failedValue: input));
  }
}

Either<ValueFailure<DateTime>, DateTime> validateCreatedDate(DateTime input) {
  if (input.validateCreatedDate) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidCreatedDate(failedValue: input));
  }
}

Either<ValueFailure<DateTime?>, DateTime?> validateUpdatedDate(DateTime? input) {
  if (input.validateUpdatedDate) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidUpdatedDate(failedValue: input));
  }
}

Either<ValueFailure<String?>, String?> validateNameField(String? input) {
  if (input.isValidStringField) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidNameField(failedValue: input));
  }
}
