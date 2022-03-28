part of 'tv_detail_bloc.dart';

abstract class TvDetailEvent extends Equatable {
  const TvDetailEvent();

  @override
  List<Object> get props => [];
}

class OnLoadDetailTv extends TvDetailEvent {
  final int id;

  const OnLoadDetailTv(this.id);

  @override
  List<Object> get props => [id];
}

class OnLoadStatusTv extends TvDetailEvent {
  final int id;

  const OnLoadStatusTv(this.id);

  @override
  List<Object> get props => [id];
}

class OnAddToWatchlistTv extends TvDetailEvent {
  final TvDetail tvDetail;

  const OnAddToWatchlistTv(this.tvDetail);

  @override
  List<Object> get props => [tvDetail];
}

class OnRemoveFromWatchlistTv extends TvDetailEvent {
  final TvDetail tvDetail;

  const OnRemoveFromWatchlistTv(this.tvDetail);

  @override
  List<Object> get props => [tvDetail];
}
