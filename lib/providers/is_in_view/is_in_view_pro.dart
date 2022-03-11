
import 'package:flutter/foundation.dart';


class IsInViewProvider with ChangeNotifier {
  String viewId = '';

  setIsInView(String id) {
    viewId = id;
    notifyListeners();
    debugPrint(" vies id  issss $viewId");
  }
}
