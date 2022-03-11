import 'package:flutter/foundation.dart';
import 'package:netfilx_clone/models/searchModel/searchModel.dart';
import 'package:netfilx_clone/network/main_network.dart';
import 'package:netfilx_clone/network/search_network/search_network.dart';

class SearchProvider with ChangeNotifier {
  String searchData = '';
  List<SearchModel> searchedResult = [];
  bool loading = false;
  int currentPage = 1;
  int nextPage = 1;

  setData(data) {
    searchData = data;
    notifyListeners();
  }

  bool isResult() {
    return searchData.isEmpty ? false : true;
  }

  Future<bool> getMoreSearchRes() async {
    nextPage = currentPage + 1;
    await getSearchRes(searchData, false);
    return true;
  }

  Future<void> getSearchRes(String search, [bool newSearch = true]) async {
    if (searchData.isEmpty || searchData == "") {
      currentPage = 1;
      nextPage = 1;
      searchedResult.clear();
      notifyListeners();
    } else {
      loading = true;
      if (newSearch) {
        currentPage = 1;
        nextPage = 1;
        searchedResult.clear();
        cancelRequest();
      }
      notifyListeners();

      var data = await searchMovies(search, nextPage);
      if (data.isNotEmpty) {
        searchedResult
            .removeWhere((element) => element.page == data.first.page);

        currentPage = data.first.page;
        searchedResult.addAll(data);
      }
      loading = false;
      notifyListeners();
    }
  }
}
