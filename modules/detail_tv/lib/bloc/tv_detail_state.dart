part of 'tv_detail_bloc.dart';

class TvDetailState {
  final TvDetail? tvDetail;
  final RequestState tvDetailState;
  final List<Tv> tvRecommendations;
  final RequestState tvRecommendationsState;
  final bool isAddedToWatchlist;
  final String tvDetailMessage;
  final String tvRecommendationsMessage;
  final String watchlistMessage;

  TvDetailState(
      {required this.tvDetail,
      required this.tvDetailState,
      required this.tvRecommendations,
      required this.tvRecommendationsState,
      required this.isAddedToWatchlist,
      required this.tvDetailMessage,
      required this.tvRecommendationsMessage,
      required this.watchlistMessage});

  TvDetailState copyWith(
      {TvDetail? tvDetail,
      RequestState? tvDetailState,
      List<Tv>? tvRecommendations,
      RequestState? tvRecommendationsState,
      bool? isAddedToWatchlist,
      String? tvDetailMessage,
      String? tvRecommendationsMessage,
      String? watchlistMessage}) {
    return TvDetailState(
        tvDetail: tvDetail ?? this.tvDetail,
        tvDetailState: tvDetailState ?? this.tvDetailState,
        tvRecommendations: tvRecommendations ?? this.tvRecommendations,
        tvRecommendationsState:
            tvRecommendationsState ?? this.tvRecommendationsState,
        isAddedToWatchlist: isAddedToWatchlist ?? this.isAddedToWatchlist,
        tvDetailMessage: tvDetailMessage ?? this.tvDetailMessage,
        tvRecommendationsMessage:
            tvRecommendationsMessage ?? this.tvRecommendationsMessage,
        watchlistMessage: watchlistMessage ?? this.watchlistMessage);
  }

  factory TvDetailState.initial() => TvDetailState(
      tvDetail: null,
      tvDetailState: RequestState.Empty,
      tvRecommendations: [],
      tvRecommendationsState: RequestState.Empty,
      isAddedToWatchlist: false,
      tvDetailMessage: '',
      tvRecommendationsMessage: '',
      watchlistMessage: '');
}
