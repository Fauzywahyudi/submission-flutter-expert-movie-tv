import 'package:core/domain/entities/tv.dart';
import 'package:detail_tv/domain/usecases/get_tv_recommendations.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'load_recommendation_tv_event.dart';
part 'load_recommendation_tv_state.dart';

class RecoTvBloc extends Bloc<RecoTvEvent, RecoTvState> {
  final GetTvRecommendations _getTvRecommendations;

  RecoTvBloc(this._getTvRecommendations) : super(RecoTvEmpty()) {
    on<OnLoadRecoTv>((event, emit) async {
      final id = event.id;

      emit(RecoTvLoading());
      final result = await _getTvRecommendations.execute(id);

      result.fold(
        (failure) => emit(RecoTvError(failure.message)),
        (data) => emit(RecoTvHasData(data)),
      );
    });
  }
}
