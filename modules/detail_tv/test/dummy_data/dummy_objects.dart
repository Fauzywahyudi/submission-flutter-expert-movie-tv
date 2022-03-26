import 'package:core/data/models/tv_table.dart';
import 'package:core/domain/entities/genre.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/entities/tv_detail.dart';

// TV
final testTv = Tv(
  backdropPath: "/8Xs20y8gFR0W9u8Yy9NKdpZtSu7.jpg",
  firstAirDate: "2022-01-28",
  genreIds: [18, 10765],
  id: 99966,
  name: "All of Us Are Dead",
  originalLanguage: "ko",
  originalName: "지금 우리 학교는",
  overview:
      "A high school becomes ground zero for a zombie virus outbreak. Trapped students must fight their way out — or turn into one of the rabid infected.",
  popularity: 5582.039,
  posterPath: "/pTEFqAjLd5YTsMD6NSUxV6Dq7A6.jpg",
  voteAverage: 8.8,
  voteCount: 1084,
);

final testTvList = [testTv];

final testTvDetail = TvDetail(
    adult: false,
    backdropPath: 'backdropPath',
    genres: [Genre(id: 1, name: 'Action')],
    id: 1,
    overview: 'overview',
    posterPath: 'posterPath',
    name: 'name',
    voteAverage: 1,
    voteCount: 1,
    episodeRunTime: [1, 2, 3],
    firstAirDate: "firstAirDate",
    lastAirDate: "lastAirDate",
    numberOfEpisodes: 1,
    numberOfSeasons: 1,
    originalLanguage: "originalLanguage",
    originalName: "originalName",
    popularity: 1.0,
    status: "status",
    tagline: "tagline",
    type: "type",
    nextEpisodeToAir: null);

final testWatchlistTv = Tv.watchlist(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testTvTable = TvTable(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testTvMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'name': 'name',
};
