import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/models/movies_model/movie_model.dart';
import 'package:netfilx_clone/models/searchModel/searchModel.dart';
import 'package:netfilx_clone/network/main_network.dart';

Future<List<SearchModel>> getPopularMovies(int page) async {
  var res = await mainNetWork("$popularMoviesUrl?&page=$page");
  var pageNum = res.data['page'];
  List results = res.data["results"];

  //print(res.data);
  var data = results
      .map((e) => SearchModel(
            pageNum,
            MovieModel(
              id: e["id"] ?? "",
              media_type: e['media_type'].toString(),
              original_language: e["original_language"].toString(),
              title: e["title"].toString(),
              overview: e["overview"].toString(),
              poster_path: e["poster_path"].toString(),
              release_date: e["release_date"].toString(),
              vote_average: e["vote_average"].toString(),
              vote_count: e["vote_count"].toString(),
            ),
          ))
      .toList();
  return data;
}
