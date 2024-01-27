import 'package:schedule_search_and_job_peek/core/errors/index.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was : $valueFailure');
  }
}

class ConnectionFailureError extends Error {
  @override
  String toString() => 'Failed to connect to the server';
}
