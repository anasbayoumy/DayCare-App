import 'package:daycarefirst/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}

class NoParams {}
