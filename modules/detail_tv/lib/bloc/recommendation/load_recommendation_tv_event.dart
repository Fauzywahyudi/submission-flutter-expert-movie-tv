part of 'load_recommendation_tv_bloc.dart';

abstract class RecoTvEvent extends Equatable {
  const RecoTvEvent();

  @override
  List<Object> get props => [];
}

class OnLoadRecoTv extends RecoTvEvent {
  final int id;

  const OnLoadRecoTv(this.id);

  @override
  List<Object> get props => [id];
}
