part of 'detail_bloc.dart';

abstract class DetailEvent extends Equatable {
  const DetailEvent();

  @override
  List<Object> get props => [];
}

class OnLoadDetailTv extends DetailEvent {
  final int id;

  const OnLoadDetailTv(this.id);

  @override
  List<Object> get props => [id];
}

// class OnLoadRecommendationTv extends DetailEvent {
//   final int id;

//   const OnLoadRecommendationTv(this.id);
//   @override
//   List<Object> get props => [id];
// }

// class OnAddWatchlist extends DetailEvent {
//   final int id;

//   const OnAddWatchlist(this.id);

//   @override
//   List<Object> get props => [id];
// }

// class OnRemoveFromWatchlist extends DetailEvent {
//   final TvDetail tv;

//   const OnRemoveFromWatchlist(this.tv);

//   @override
//   List<Object> get props => [tv];
// }
