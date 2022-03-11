// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

Dio dio = Dio();
var nullResponse = Response(requestOptions: RequestOptions(path: ''));
CancelToken _token = CancelToken();
Future<Response> mainNetWork(String path) async {
  try {
    var res = await dio.get(
      path,
      queryParameters: {"api_key": api},
      cancelToken: _token,
    );
    //dio.close(force: true);

    return res;
  } catch (e) {
    return Response(requestOptions: RequestOptions(path: ''));
  }
}

bool cancelRequest() {
  if (!_token.isCancelled) {
    _token.cancel();
    _token = CancelToken();
    return true;
  } else {
    return false;
  }
}
