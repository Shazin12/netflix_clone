import 'package:flutter/foundation.dart';

import 'package:netfilx_clone/network/get_video_link/get_video_link.dart';

class LoadVideoLinkPro with ChangeNotifier {
  bool _isLoading = false;
  String _url = '';

  bool get isLoading => _isLoading;
  String get url => _url;

  Future<void> getVideoLink(String url) async {
    _isLoading = true;
    _url = '';
    notifyListeners();
    var res = await getVideoLinkOfMovie(url);
    _url = res;
    _isLoading = false;
    notifyListeners();
  }

  void clearAll() {
    _url = '';
    // because if we make it true it will make a delay depend on the duration
    // so it change to true if the widget is builded that time show progress
    _isLoading = true;
    notifyListeners();
  }
}
