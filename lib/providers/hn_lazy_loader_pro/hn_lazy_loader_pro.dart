import 'package:flutter/foundation.dart';
import 'package:netfilx_clone/network/hot_and_new_network/hot_and_new_network.dart';

class HotAndNewLazyLoaderPro with ChangeNotifier {
  bool bottomLoadingComingSoon = false;
  bool currentLoadingComingSoon = false;

  bool bottomLoadingNowPlaying = false;
  bool currentLoadingNowPlaying = false;

  // coming soon function 🕔🕔🕔

  void setBottomLoadingComingSoonTrue() {
    print("bottom load true");
    bottomLoadingComingSoon = true;
    notifyListeners();
  }

  void setBottomLoadingComingSoonFalse() {
    print("bottom load false");
    bottomLoadingComingSoon = false;
    notifyListeners();
  }

  void setcurrentLoadingComingSoonTrue() {
    print("current load true");
    currentLoadingComingSoon = true;
    notifyListeners();
  }

  void setcurrentLoadingComingSoonFalse() {
    print("current load false");
    currentLoadingComingSoon = false;
    notifyListeners();
  }

  void setDefaultValueOfComingSoon() {
    bottomLoadingComingSoon = false;
    currentLoadingComingSoon = false;
    cancelUpComing();
    notifyListeners();
  }

  // now playing functions ⌚⌚

  void setBottomLoadingNowPlayingTrue() {
    bottomLoadingNowPlaying = true;
    notifyListeners();
  }

  void setBottomLoadingNowPlayingFalse() {
    bottomLoadingNowPlaying = false;
    notifyListeners();
  }

  void setcurrentLoadingNowPlayingTrue() {
    currentLoadingNowPlaying = true;
    notifyListeners();
  }

  void setcurrentLoadingNowPlayingFalse() {
    currentLoadingNowPlaying = false;
    notifyListeners();
  }

  void setDefaultValueOfNowPlaying() {
    bottomLoadingNowPlaying = false;
    currentLoadingNowPlaying = false;
    cancelNowPlaying();
    notifyListeners();
  }
}
