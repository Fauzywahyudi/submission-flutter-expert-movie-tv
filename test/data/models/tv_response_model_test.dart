import 'dart:convert';

import 'package:ditonton/data/models/tv_model.dart';
import 'package:ditonton/data/models/tv_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../json_reader.dart';

void main() {
  final tTvModel = TvModel(
    backdropPath: "/path.jpg",
    genreIds: [1, 2, 3, 4],
    id: 1,
    firstAirDate: "2020-05-05",
    overview: "Overview",
    popularity: 1.0,
    posterPath: "/path.jpg",
    originalLanguage: 'originalLanguage',
    originalName: 'originalName',
    name: "name",
    voteAverage: 1.0,
    voteCount: 1,
  );
  final tTvResponseModel = TvResponse(tvList: <TvModel>[tTvModel]);
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(readJson('dummy_data/on_air_tv.json'));
      // act
      final result = TvResponse.fromJson(jsonMap);
      // assert
      expect(result, tTvResponseModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing proper data', () async {
      // arrange

      // act
      final result = tTvResponseModel.toJson();
      // assert
      final expectedJsonMap = {
        "results": [
          {
            "backdrop_path": "/path.jpg",
            "genre_ids": [1, 2, 3, 4],
            "id": 1,
            "first_air_date": "2020-05-05",
            "overview": "Overview",
            "popularity": 1.0,
            "poster_path": "/path.jpg",
            "original_language": "originalLanguage",
            "original_name": "originalName",
            "name": "name",
            "vote_average": 1.0,
            "vote_count": 1
          }
        ],
      };
      expect(result, expectedJsonMap);
    });
  });
}
