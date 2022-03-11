import 'package:netfilx_clone/models/movies_model/movie_model.dart';
import 'package:netfilx_clone/pages/new_and_hot/main_new_and_hot.dart';

class HotAndNewModel {
  final int page;
  final MovieModel movie;
  final String videoUrl;
  final BtnState state;

  HotAndNewModel({
    required this.page,
    required this.movie,
    required this.videoUrl,
    required this.state,
  });

  @override
  String toString() {
    return "page : $page , movies : $movie , videourl : $videoUrl btnstate : $btnState \n";
  }
}
