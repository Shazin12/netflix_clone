import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:netfilx_clone/models/upcoming_model/upcoming_model.dart';
import 'package:netfilx_clone/network/hot_and_new_network/hot_and_new_network.dart';
import 'package:provider/provider.dart';

import '../hn_lazy_loader_pro/hn_lazy_loader_pro.dart';

class HotAndNewProvider with ChangeNotifier {
  // up coming
  List<HotAndNewModel> _upcoming = [];
  bool loading = false;
  int _currentPage = 1;
  int _nextPage = 1;
  bool dataFullLoaded = false;

  // now playing
  List<HotAndNewModel> _nowPlaying = [];
  bool nowPlayingloading = false;
  int __nowPlayingcurrentPage = 1;
  int __nowPlayingnextPage = 1;
  bool nowPlayingdataFullLoaded = false;

  // up coming
  List<HotAndNewModel> get upcoming {
    List<HotAndNewModel> sortList = _upcoming
        .where((val) =>
            DateTime.tryParse(val.movie.release_date)!.isAfter(DateTime.now()))
        .toList();
    sortList.sort((a, b) {
      DateTime compare = DateTime.tryParse(b.movie.release_date)!;
      return DateTime.tryParse(a.movie.release_date)!.compareTo(compare);
    });
    return sortList;
  }

  // now playing
  List<HotAndNewModel> get nowPlaying {
    List<HotAndNewModel> sortList = _nowPlaying;
    sortList.sort((a, b) {
      DateTime compare = DateTime.tryParse(b.movie.release_date)!;
      return DateTime.tryParse(a.movie.release_date)!.compareTo(compare);
    });
    return sortList;
  }

  // upcoming
  Future<void> getMoreUpcomingRes(BuildContext context) async {
    var pro = context.read<HotAndNewLazyLoaderPro>();

    if (!pro.currentLoadingComingSoon) {
      pro.setBottomLoadingComingSoonTrue();
    }
    if (!pro.currentLoadingComingSoon) {
      pro.setcurrentLoadingComingSoonTrue();
      _nextPage = _currentPage + 1;
      await getUpcomingRes(false);
      pro.setcurrentLoadingComingSoonFalse();
      pro.setBottomLoadingComingSoonFalse();
    }
  }

  Future<void> getUpcomingRes([bool fromNew = true]) async {
    print("callled form");
    cancelUpComing();
    loading = true;
    notifyListeners();
    if (fromNew) {
      _currentPage = 1;
      _nextPage = 1;
      _upcoming.clear();
      dataFullLoaded = false;
      cancelUpComing();
      notifyListeners();
    }
    if (!dataFullLoaded) {
      var data = await getHotAnNewMovies(_nextPage);
      if (data.isNotEmpty) {
        _currentPage = data.first.page;
        _upcoming.removeWhere((element) => element.page == _currentPage);
        _upcoming.addAll(data);
        notifyListeners();
      } else {
        dataFullLoaded = true;
        notifyListeners();
      }
    }
    loading = false;
    notifyListeners();
  }

// now playing
  Future<void> getMoreNowPlayingRes(BuildContext context) async {
    var pro = context.read<HotAndNewLazyLoaderPro>();

    if (!pro.currentLoadingNowPlaying) {
      pro.setBottomLoadingNowPlayingTrue();
    }
    if (!pro.currentLoadingNowPlaying) {
      pro.setcurrentLoadingNowPlayingTrue();

      __nowPlayingnextPage = __nowPlayingcurrentPage + 1;
      await getNowPlayingRes(false);

      pro.setcurrentLoadingNowPlayingFalse();
      pro.setBottomLoadingNowPlayingFalse();
    }
  }

  Future<void> getNowPlayingRes([bool fromNew = true]) async {
    print("callled ....");
    cancelNowPlaying();
    nowPlayingloading = true;
    notifyListeners();
    if (fromNew) {
      __nowPlayingcurrentPage = 1;
      __nowPlayingnextPage = 1;
      _nowPlaying.clear();
      nowPlayingdataFullLoaded = false;
      cancelNowPlaying();
      notifyListeners();
    }
    if (!nowPlayingdataFullLoaded) {
      var data =
          await getHotAnNewMovies(__nowPlayingnextPage, isNowPlaying: true);
      if (data.isNotEmpty) {
        __nowPlayingcurrentPage = data.first.page;
        _nowPlaying
            .removeWhere((element) => element.page == __nowPlayingcurrentPage);
        _nowPlaying.addAll(data);
        notifyListeners();
      } else {
        nowPlayingdataFullLoaded = true;
        notifyListeners();
      }
    }
    nowPlayingloading = false;
    notifyListeners();
  }
}
