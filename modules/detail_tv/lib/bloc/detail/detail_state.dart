part of 'detail_bloc.dart';

abstract class DetailState extends Equatable {
  const DetailState();

  @override
  List<Object> get props => [];
}

class DetailLoading extends DetailState {}

class RecommendationLoading extends DetailState {}

class DetailError extends DetailState {
  final String message;

  const DetailError(this.message);

  @override
  List<Object> get props => [message];
}

class RecommendationError extends DetailState {
  final String message;

  const RecommendationError(this.message);

  @override
  List<Object> get props => [message];
}

class DetailHasData extends DetailState {
  final TvDetail result;

  const DetailHasData(this.result);

  @override
  List<Object> get props => [result];
}

// class RecommendationHasData extends DetailState {
//   final List<Tv> result;

//   const RecommendationHasData(this.result);

//   @override
//   List<Object> get props => [result];
// }
