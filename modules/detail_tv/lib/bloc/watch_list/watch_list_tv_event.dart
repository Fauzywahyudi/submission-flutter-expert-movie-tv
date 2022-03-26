part of 'watch_list_tv_bloc.dart';

abstract class WatchListTvEvent extends Equatable {
  const WatchListTvEvent();

  @override
  List<Object> get props => [];
}

class OnLoadStatus extends WatchListTvEvent {
  final int id;

  const OnLoadStatus(this.id);

  @override
  List<Object> get props => [id];
}

class OnAddWatchlist extends WatchListTvEvent {
  final TvDetail tvDetail;

  const OnAddWatchlist(this.tvDetail);

  @override
  List<Object> get props => [tvDetail];
}

class OnRemoveFromWatchlist extends WatchListTvEvent {
  final TvDetail tvDetail;

  const OnRemoveFromWatchlist(this.tvDetail);

  @override
  List<Object> get props => [tvDetail];
}
