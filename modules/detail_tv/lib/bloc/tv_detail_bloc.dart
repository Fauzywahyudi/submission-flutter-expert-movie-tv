import 'package:core/core.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/entities/tv_detail.dart';
import 'package:detail_tv/domain/usecases/get_tv_detail.dart';
import 'package:detail_tv/domain/usecases/get_tv_recommendations.dart';
import 'package:detail_tv/domain/usecases/get_watchlist_status_tv.dart';
import 'package:detail_tv/domain/usecases/remove_watchlist_tv.dart';
import 'package:detail_tv/domain/usecases/save_watchlist_tv.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tv_detail_state.dart';
part 'tv_detail_event.dart';

class TvDetailBloc extends Bloc<TvDetailEvent, TvDetailState> {
  final GetTvDetail _tvDetail;
  final GetWatchListStatusTv _getWatchListStatusTv;
  final SaveWatchlistTv _saveWatchlistTv;
  final RemoveWatchlistTv _removeWatchlistTv;
  final GetTvRecommendations _getTvRecommendations;

  TvDetailBloc(
      this._tvDetail,
      this._getWatchListStatusTv,
      this._saveWatchlistTv,
      this._removeWatchlistTv,
      this._getTvRecommendations)
      : super(TvDetailState.initial()) {
    on<OnLoadDetailTv>(((event, emit) async {
      final id = event.id;

      emit(state.copyWith(
          tvDetailState: RequestState.Loading, tvDetailMessage: ''));

      final detailResult = await _tvDetail.execute(id);

      final recoTvResult = await _getTvRecommendations.execute(id);

      detailResult.fold(
        (failure) => emit(state.copyWith(
            tvDetailMessage: failure.message,
            tvDetailState: RequestState.Error)),
        (data) => emit(
            state.copyWith(tvDetail: data, tvDetailState: RequestState.Loaded)),
      );

      recoTvResult.fold(
        (failure) => emit(state.copyWith(
            tvRecommendationsMessage: failure.message,
            tvRecommendationsState: RequestState.Error)),
        (data) => emit(state.copyWith(
            tvRecommendations: data,
            tvRecommendationsState: RequestState.Loaded)),
      );
    }));

    on<OnLoadStatusTv>(((event, emit) async {
      final id = event.id;

      final result = await _getWatchListStatusTv.execute(id);
      emit(state.copyWith(isAddedToWatchlist: result));
    }));

    on<OnAddToWatchlistTv>((event, emit) async {
      final result = await _saveWatchlistTv.execute(event.tvDetail);

      result.fold(
        (failure) => emit(state.copyWith(watchlistMessage: failure.message)),
        (successMessage) =>
            emit(state.copyWith(watchlistMessage: successMessage)),
      );
      add(OnLoadStatusTv(event.tvDetail.id));
    });

    on<OnRemoveFromWatchlistTv>((event, emit) async {
      final result = await _removeWatchlistTv.execute(event.tvDetail);

      result.fold(
        (failure) => emit(state.copyWith(watchlistMessage: failure.message)),
        (successMessage) =>
            emit(state.copyWith(watchlistMessage: successMessage)),
      );
      add(OnLoadStatusTv(event.tvDetail.id));
    });
  }
}
