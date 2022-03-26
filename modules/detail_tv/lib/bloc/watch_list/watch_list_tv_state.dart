part of 'watch_list_tv_bloc.dart';

abstract class WatchListTvState extends Equatable {
  const WatchListTvState();

  @override
  List<Object> get props => [];
}

class StatusEmpty extends WatchListTvState {}

class StatusLoading extends WatchListTvState {}

class StatushError extends WatchListTvState {
  final String message;

  const StatushError(this.message);

  @override
  List<Object> get props => [message];
}

class StatusHasData extends WatchListTvState {
  final bool result;

  const StatusHasData(this.result);

  @override
  List<Object> get props => [result];
}

class StatusSuccess extends WatchListTvState {
  final String message;

  const StatusSuccess(this.message);

  @override
  List<Object> get props => [message];
}
