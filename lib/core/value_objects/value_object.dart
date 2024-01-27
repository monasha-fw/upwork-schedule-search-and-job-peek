import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:schedule_search_and_job_peek/core/errors/index.dart';

/// Export value object files

export 'common.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  /// Returns the value if the value is valid
  ///
  /// Throws [UnexpectedValueError] if the value contains a [ValueFailure]
  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), (r) => r);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(Left.new, (r) => const Right(unit));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}
