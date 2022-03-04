// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

Dio dio = Dio();
CancelToken _token = CancelToken();
Future<Response> mainNetWork(String path) async {
  var res = await dio.get(
    path,
    queryParameters: {"api_key": api},
    cancelToken: _token,
  );
  //dio.close(force: true);

  return res;
}

bool cancelRequest() {
  _token.cancel();
  if (_token.isCancelled) {
    _token = CancelToken();
    return true;
  } else {
    return false;
  }
}
