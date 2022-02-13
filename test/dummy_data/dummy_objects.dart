import 'package:ditonton/data/models/movie_table.dart';
import 'package:ditonton/data/models/tv_table.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/entities/tv.dart';
import 'package:ditonton/domain/entities/tv_detail.dart';

final testMovie = Movie(
  adult: false,
  backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
  genreIds: [14, 28],
  id: 557,
  originalTitle: 'Spider-Man',
  overview:
      'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
  popularity: 60.441,
  posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
  releaseDate: '2002-05-01',
  title: 'Spider-Man',
  video: false,
  voteAverage: 7.2,
  voteCount: 13507,
);

final testMovieList = [testMovie];

final testMovieDetail = MovieDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  runtime: 120,
  title: 'title',
  voteAverage: 1,
  voteCount: 1,
);

final testWatchlistMovie = Movie.watchlist(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieTable = MovieTable(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'title': 'title',
};

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
