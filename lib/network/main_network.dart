import 'package:dio/dio.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

Future<Response> mainNetWork(String path) async {
  Dio dio = Dio();
  var res = await dio.get(path, queryParameters: {"api_key": api});
  return res;
}
