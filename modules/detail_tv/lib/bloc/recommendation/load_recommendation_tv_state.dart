part of 'load_recommendation_tv_bloc.dart';

abstract class RecoTvState extends Equatable {
  const RecoTvState();

  @override
  List<Object> get props => [];
}

class RecoTvEmpty extends RecoTvState {}

class RecoTvLoading extends RecoTvState {}

class RecoTvError extends RecoTvState {
  final String message;

  const RecoTvError(this.message);

  @override
  List<Object> get props => [message];
}

class RecoTvHasData extends RecoTvState {
  final List<Tv> result;

  const RecoTvHasData(this.result);

  @override
  List<Object> get props => [result];
}
