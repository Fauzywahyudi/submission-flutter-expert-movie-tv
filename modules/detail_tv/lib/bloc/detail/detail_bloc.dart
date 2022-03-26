import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/entities/tv_detail.dart';
import 'package:detail_tv/domain/usecases/get_tv_detail.dart';
import 'package:detail_tv/domain/usecases/get_tv_recommendations.dart';
import 'package:detail_tv/domain/usecases/get_watchlist_status_tv.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'detail_state.dart';
part 'detail_event.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final GetTvDetail _tvDetail;
  // final GetTvRecommendations _tvRecommendations;
  // final GetWatchListStatusTv _watchListStatusTv;

  DetailBloc(this._tvDetail) : super(DetailLoading()) {
    on<OnLoadDetailTv>(((event, emit) async {
      final id = event.id;

      emit(DetailLoading());
      final result = await _tvDetail.execute(id);

      result.fold((failure) => emit(DetailError(failure.message)),
          (data) => emit(DetailHasData(data)));
    }));

    // on<OnLoadRecommendationTv>(((event, emit) async {
    //   final id = event.id;

    //   emit(RecommendationLoading());
    //   final result = await _tvRecommendations.execute(id);

    //   result.fold((failure) => emit(RecommendationError(failure.message)),
    //       (data) => emit(RecommendationHasData(data)));
    // }));
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
