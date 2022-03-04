import 'package:flutter/widgets.dart';
import 'package:netfilx_clone/models/searchModel/searchModel.dart';
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

  Future<void> getSearchRes(String search) async {
    if (searchData.isEmpty || searchData == "") {
      currentPage = 1;
      nextPage = 1;
      searchedResult.clear();
      notifyListeners();
    } else {
      loading = true;
      searchedResult.clear();
      notifyListeners();

      var data = await SearchNetwork.searchMovies(search, nextPage);
      if (data.isNotEmpty) {
        searchedResult
            .removeWhere((element) => element.page == data.first.page);
        currentPage = data.first.page;
        nextPage = data.first.page + 1;
        print(data.length);

        searchedResult.addAll(data);
      }
      loading = false;
      notifyListeners();
    }
  }
}
