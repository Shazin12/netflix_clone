import 'package:flutter/foundation.dart';


class VideoLoaderProvider with ChangeNotifier {
  bool _videoLoading = false;

  bool get videoLoading => _videoLoading;

  void videoLoadTrue() {
    _videoLoading = true;
    notifyListeners();
  }

  void videoLoadFalse() {
    _videoLoading = false;
    notifyListeners();
  }
}
