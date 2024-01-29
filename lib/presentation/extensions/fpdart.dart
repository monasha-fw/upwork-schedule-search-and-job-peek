import 'package:fpdart/fpdart.dart';

extension EitherX<L, R> on Either<L, R> {
  R get asR => (this as Right).value;

  L get asL => (this as Left).value;
}

extension OptionX<T> on Option<T> {
  T get asSome => fold(() => throw Exception('None!'), (value) => value);
}
