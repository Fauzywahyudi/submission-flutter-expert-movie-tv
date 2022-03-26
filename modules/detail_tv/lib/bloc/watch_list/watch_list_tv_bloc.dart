import 'package:core/domain/entities/tv_detail.dart';
import 'package:detail_tv/domain/usecases/get_watchlist_status_tv.dart';
import 'package:detail_tv/domain/usecases/remove_watchlist_tv.dart';
import 'package:detail_tv/domain/usecases/save_watchlist_tv.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'watch_list_tv_state.dart';
part 'watch_list_tv_event.dart';

class WatchListTvBloc extends Bloc<WatchListTvEvent, WatchListTvState> {
  final GetWatchListStatusTv _getWatchListStatusTv;
  final SaveWatchlistTv _saveWatchlistTv;
  final RemoveWatchlistTv _removeWatchlistTv;

  WatchListTvBloc(this._getWatchListStatusTv, this._saveWatchlistTv,
      this._removeWatchlistTv)
      : super(StatusEmpty()) {
    on<OnLoadStatus>((event, emit) async {
      final id = event.id;

      emit(StatusLoading());
      final result = await _getWatchListStatusTv.execute(id);
      emit(StatusHasData(result));
    });

    on<OnAddWatchlist>((event, emit) async {
      final tvDetail = event.tvDetail;

      emit(StatusLoading());
      final result = await _saveWatchlistTv.execute(tvDetail);
      result.fold(
        (failure) => emit(StatushError(failure.message)),
        (data) => emit(const StatusSuccess('Success Add to List')),
      );
    });

    on<OnRemoveFromWatchlist>((event, emit) async {
      final tvDetail = event.tvDetail;

      emit(StatusLoading());
      final result = await _removeWatchlistTv.execute(tvDetail);
      result.fold(
        (failure) => emit(StatushError(failure.message)),
        (data) => emit(const StatusSuccess('Success Remove from List')),
      );
    });
  }
}
