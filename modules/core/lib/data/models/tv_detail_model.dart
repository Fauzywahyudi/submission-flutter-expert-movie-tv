import 'package:equatable/equatable.dart';
import 'package:core/data/models/genre_model.dart';
import 'package:core/domain/entities/tv_detail.dart';

class TvDetailResponse extends Equatable {
  TvDetailResponse({
    required this.adult,
    required this.backdropPath,
    required this.episodeRunTime,
    required this.firstAirDate,
    required this.genres,
    required this.id,
    required this.lastAirDate,
    required this.name,
    required this.nextEpisodeToAir,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.status,
    required this.tagline,
    required this.type,
    required this.voteAverage,
    required this.voteCount,
  });

  final bool adult;
  final String? backdropPath;
  final List<int> episodeRunTime;
  final String firstAirDate;
  final List<GenreModel> genres;
  final int id;
  final String lastAirDate;
  final String name;
  final dynamic nextEpisodeToAir;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final String status;
  final String tagline;
  final String type;
  final double voteAverage;
  final int voteCount;

  factory TvDetailResponse.fromJson(Map<String, dynamic> json) =>
      TvDetailResponse(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        episodeRunTime: List<int>.from(json["episode_run_time"].map((x) => x)),
        firstAirDate: json['first_air_date'],
        genres: List<GenreModel>.from(
            json["genres"].map((x) => GenreModel.fromJson(x))),
        id: json["id"],
        lastAirDate: json['last_air_date'],
        name: json["name"],
        nextEpisodeToAir: json["next_episode_to_air"],
        numberOfEpisodes: json["number_of_episodes"],
        numberOfSeasons: json["number_of_seasons"],
        originalLanguage: json["original_language"],
        originalName: json["original_name"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        status: json["status"],
        tagline: json["tagline"],
        type: json["type"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "episode_run_time": List<dynamic>.from(episodeRunTime.map((x) => x)),
        "first_air_date": firstAirDate,
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "id": id,
        "last_air_date": lastAirDate,
        "name": name,
        "next_episode_to_air": nextEpisodeToAir,
        "number_of_episodes": numberOfEpisodes,
        "number_of_seasons": numberOfSeasons,
        "original_language": originalLanguage,
        "original_name": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "status": status,
        "tagline": tagline,
        "type": type,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };

  TvDetail toEntity() {
    return TvDetail(
        adult: adult,
        backdropPath: backdropPath,
        episodeRunTime: episodeRunTime,
        firstAirDate: firstAirDate,
        genres: this.genres.map((genre) => genre.toEntity()).toList(),
        id: id,
        lastAirDate: lastAirDate,
        name: name,
        nextEpisodeToAir: nextEpisodeToAir,
        numberOfEpisodes: numberOfEpisodes,
        numberOfSeasons: numberOfSeasons,
        originalLanguage: originalLanguage,
        originalName: originalName,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        status: status,
        tagline: tagline,
        type: type,
        voteAverage: voteAverage,
        voteCount: voteCount);
  }

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        episodeRunTime,
        firstAirDate,
        genres,
        id,
        lastAirDate,
        name,
        nextEpisodeToAir,
        numberOfEpisodes,
        numberOfSeasons,
        originalLanguage,
        originalName,
        overview,
        popularity,
        posterPath,
        status,
        tagline,
        type,
        voteAverage,
        voteCount,
      ];
}
