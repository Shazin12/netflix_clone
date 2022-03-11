import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/models/movies_model/movie_model.dart';
import 'package:netfilx_clone/models/upcoming_model/upcoming_model.dart';
import 'package:netfilx_clone/network/main_network.dart';
import 'package:netfilx_clone/pages/new_and_hot/main_new_and_hot.dart';

CancelToken _cancelUpcoming = CancelToken();
CancelToken _cancelNowPlaying = CancelToken();

Future<List<HotAndNewModel>> getHotAnNewMovies(int page,
    {bool isNowPlaying = false}) async {
  var url = isNowPlaying ? nowPlayingUrl : upComingUrl;
  Response res;
  isNowPlaying
      ? res = await _nowPlaying("$url?&page=$page")
      : res = await _upcoming("$url?&page=$page");
  try {
    List<HotAndNewModel> data = [];
    var key = "";
    if (res != nullResponse) {
      var pageNum = res.data['page'];
      List<dynamic> results = res.data["results"];

      await Future.forEach(results, (e) async {
        var json = jsonEncode(e);
        var jsonD = jsonDecode(json);
        var id = jsonD["id"];
        // check for type == trailer or teaser and key is need to get youtube video
        Response _res;
        isNowPlaying
            ? _res = await _nowPlaying(
                "https://api.themoviedb.org/3/movie/$id/videos?page=$page")
            : _res = await _upcoming(
                "https://api.themoviedb.org/3/movie/$id/videos?page=$page");

        if (_res != nullResponse) {
          try {
            List _results = _res.data["results"];
            //  List listResult = _results;

            // cheching for key
            if (_results.isNotEmpty) {
              var _youtubedata = _results
                  .where((element) =>
                      element["site"].toString().toLowerCase() == "youtube")
                  .toList();
              if (_youtubedata.isNotEmpty) {
                var _trailerdata = _youtubedata
                    .where((element) =>
                        element["type"].toString().toLowerCase() == "trailer")
                    .toList();
                if (_trailerdata.isEmpty) {
                  var _teaserData = _youtubedata
                      .where((element) =>
                          element["type"].toString().toLowerCase() == "teaser")
                      .toList();
                  if (_teaserData.isNotEmpty) {
                    key = _teaserData[0]["key"];
                  } else {
                    key = _youtubedata.first["key"];
                  }
                } else {
                  key = _trailerdata[0]["key"];
                }
              } else {
                debugPrint("there is no trailer or teaser available");
              }
            }
          } catch (e) {}
        }
        data.add(HotAndNewModel(
          page: pageNum,
          state: isNowPlaying ? BtnState.everyoneWatching : BtnState.comingSoon,
          movie: MovieModel(
            id: jsonD["id"] ?? "",
            media_type: jsonD['media_type'].toString(),
            original_language: jsonD["original_language"].toString(),
            title: jsonD["title"].toString(),
            overview: jsonD["overview"].toString(),
            poster_path: jsonD["poster_path"].toString(),
            release_date: jsonD["release_date"].toString(),
            vote_average: jsonD["vote_average"].toString(),
            vote_count: jsonD["vote_count"].toString(),
          ),
          videoUrl: key,
        ));
      });
    }
    return data;
  } catch (e) {
    return [];
  }
}

Future<Response> _upcoming(String path) async {
  try {
    var res = await dio.get(
      path,
      queryParameters: {"api_key": api},
      cancelToken: _cancelUpcoming,
    );
    //dio.close(force: true);

    return res;
  } catch (e) {
    return Response(requestOptions: RequestOptions(path: ''));
  }
}

Future<Response> _nowPlaying(String path) async {
  try {
    var res = await dio.get(
      path,
      queryParameters: {"api_key": api},
      cancelToken: _cancelNowPlaying,
    );
    //dio.close(force: true);

    return res;
  } catch (e) {
    return Response(requestOptions: RequestOptions(path: ''));
  }
}

void cancelUpComing() {
  if (!_cancelUpcoming.isCancelled) {
    _cancelUpcoming.cancel();
    _cancelUpcoming = CancelToken();
  }
}

void cancelNowPlaying() {
  if (!_cancelNowPlaying.isCancelled) {
    _cancelNowPlaying.cancel();
    _cancelNowPlaying = CancelToken();
  }
}
