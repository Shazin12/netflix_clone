import 'package:flutter/foundation.dart';
import 'package:netfilx_clone/models/searchModel/searchModel.dart';
import 'package:netfilx_clone/network/main_network.dart';
import 'package:netfilx_clone/network/popular_movies/popular_movies.dart';

class PopularMoviesPro with ChangeNotifier {
  List<SearchModel> popularMovies = [];
  bool loading = false;
  int _currentPage = 1;
  int _nextPage = 1;

  Future<bool> getMorePopularMoviesRes() async {
    _nextPage = _currentPage + 1;
    await getPopularMoviesRes(false);
    return true;
  }

  Future<List<SearchModel>> callOnly([bool fromNew = true]) async {
    if (fromNew) {
      _currentPage = 1;
      _nextPage = 1;
      popularMovies.clear();
      cancelRequest();
    }
    var data = await getPopularMovies(_nextPage);
    return data;
  }

  void setData(List<SearchModel> data, [bool fromNew = true]) {
    if (fromNew) {
      _currentPage = 1;
      _nextPage = 1;
      popularMovies.clear();
    }
    popularMovies.addAll(data);
  }

  Future<bool> getPopularMoviesRes([bool fromNew = true]) async {
    try {
      loading = true;
      notifyListeners();
      if (fromNew) {
        _currentPage = 1;
        _nextPage = 1;
        popularMovies.clear();
        cancelRequest();
        notifyListeners();
      }

      var data = await getPopularMovies(_nextPage);
      if (data.isNotEmpty) {
        popularMovies.removeWhere((element) => element.page == data.first.page);

        _currentPage = data.first.page;
        popularMovies.addAll(data);
      }
      loading = false;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
