import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

CancelToken _cancelTokenOfMovie = CancelToken();
var _dio = Dio();

Future<String> getVideoLinkOfMovie(String movieUrl) async {
  try {
    print("get movie link called $movieUrl");
    var reqUrl = getConverterRes(movieUrl);
    var res = await _dio.get(reqUrl, cancelToken: _cancelTokenOfMovie);

    var decode = jsonDecode(res.data);
    String id = decode["id"].toString();
    bool notstop = true;
    String downloadLink = "";

    // loop u34gHaRiBIU
    while (notstop) {
      if (notstop == true) {
        var res3 = await _dio.get(downloadUrlGetter + id,
            cancelToken: _cancelTokenOfMovie);
        var decode3 = res3.data;
        //if
        if (decode3["progress"].toString() == "1000" &&
            decode3["text"].toString() == "Finished") {
          notstop = false;
          downloadLink = decode3["download_url"].toString();

          print("final $decode3");
        } else {
          debugPrint(notstop.toString());
          print(decode3);
        }
      } else {
        debugPrint("stoped");
      }
      // if end

    }
    print("download link is ===$downloadLink===");
    return downloadLink;
  } catch (e) {
    return "";
  }
  // loop end
}

void cancelMovieGetToken() {
  if (!_cancelTokenOfMovie.isCancelled) {
    _cancelTokenOfMovie.cancel();
    _cancelTokenOfMovie = CancelToken();
  }
}
