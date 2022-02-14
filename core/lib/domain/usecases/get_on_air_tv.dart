import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/repositories/tv_repository.dart';

class GetOnAirTvs {
  final TvRepository repository;

  GetOnAirTvs(this.repository);

  Future<Either<Failure, List<Tv>>> execute() {
    return repository.getOnAirTvs();
  }
}
