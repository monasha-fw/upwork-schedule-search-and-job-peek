import 'package:fpdart/fpdart.dart';
import 'package:schedule_search_and_job_peek/core/errors/index.dart';
// ignore_for_file: one_member_abstracts

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UsecaseNoParams<Type> {
  Future<Either<Failure, Type>> call();
}

abstract class UsecaseNoParamsSync<Type> {
  Either<Failure, Type> call();
}

abstract class UsecaseSync<Type, Params> {
  Either<Failure, Type> call(Params params);
}

abstract class UsecaseStream<Type, Params> {
  Stream<Either<Failure, Type>> call(Params params);
}

abstract class UsecaseStreamNoParams<Type> {
  Stream<Either<Failure, Type>> call();
}
