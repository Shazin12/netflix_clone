// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'searchModel.freezed.dart';

@freezed
class SearchModel with _$SearchModel {
  factory SearchModel(
    int page,
    int id,
    String media_type,
    String original_language,
    String title,
    String overview,
    String poster_path,
    String release_date,
    String vote_average,
    String vote_count,
  ) = _SearchModel;
}


// "original_language": "en",
// "original_title": "Spider-Man",
// "overview": "After being bitten by a genetically altered spider at Oscorp, nerdy but endearing high school student Peter Parker is endowed with amazing powers to become the superhero known as Spider-Man.",
// "popularity": 204.443,
// "poster_path": "/gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg",
// "release_date": "2002-05-01",
// "title": "Spider-Man",
// "video": false,
// "vote_average": 7.2,
// "vote_count": 15307
