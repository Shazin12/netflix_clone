// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';

@freezed
class MovieModel with _$MovieModel {
  factory MovieModel({
    required int id,
    required String media_type,
    required String original_language,
    required String title,
    required String overview,
    required String poster_path,
    required String release_date,
    required String vote_average,
    required String vote_count,
  }) = _MovieModel;
}
