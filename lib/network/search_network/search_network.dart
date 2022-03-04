import 'package:netfilx_clone/models/searchModel/searchModel.dart';
import 'package:netfilx_clone/network/main_network.dart';

class SearchNetwork {
  static Future<List<SearchModel>> searchMovies(String search,int page) async {
    var res = await mainNetWork(
        "https://api.themoviedb.org/3/search/multi?query=$search&page=$page");
    var pageNum = res.data['page'];
    List results = res.data["results"];

    //print(res.data);
    var data = results
        .map((e) => SearchModel(
              pageNum,
              e["id"] ?? "",
              e['media_type'] ?? "",
              e["original_language"].toString(),
              e["title"].toString(),
              e["overview"].toString(),
              e["poster_path"].toString(),
              e["release_date"].toString(),
              e["vote_average"].toString(),
              e["vote_count"].toString(),
            ))
        .toList();
    return data;
  }
}
