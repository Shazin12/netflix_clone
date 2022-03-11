import 'package:flutter/material.dart';

const api = "b64d67b0829f7d9af77b69d7e65bdc12";

const imageUrl = "https://image.tmdb.org/t/p/original";

const popularMoviesUrl = "https://api.themoviedb.org/3/movie/popular";

const upComingUrl = "https://api.themoviedb.org/3/movie/upcoming";

const nowPlayingUrl = "https://api.themoviedb.org/3/movie/now_playing";
// ?api_key=b64d67b0829f7d9af77b69d7e65bdc12&page=1

const _videoLinkConverter =
    "https://loader.to/ajax/download.php?button=1&start=1&end=1&format=720&url=https%3A%2F%2Fyoutube.com%2Fwatch%3Fv%3D";

const downloadUrlGetter = "https://loader.to/ajax/progress.php?id=";

String getConverterRes(String id) {
  return "$_videoLinkConverter$id%3Dmp3";
}
/*

API Read Access Token (v4 auth)
eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiNjRkNjdiMDgyOWY3ZDlhZjc3YjY5ZD
dlNjViZGMxMiIsInN1YiI6IjYyMWZiNzJmMDU4MjI0MDAxYjUyYzFhOCIsInNjb3B
lcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.64_9QdlS2UCYggux6VXfivIlv
5MRJvvnA36W0hSj5mM

 */

// https://api.themoviedb.org/3/movie/550?api_key=b64d67b0829f7d9af77b69d7e65bdc12

// height
Widget sizedBoxH10 = const SizedBox(height: 10);
Widget sizedBoxH5 = const SizedBox(height: 5);
// width
Widget sizedBoxW10 = const SizedBox(width: 10);
Widget sizedBoxW5 = const SizedBox(width: 5);

// home
const TextStyle homeTextStyle =
    TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500);
const bannerimg =
    "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/3e22b9101756393.5f269b3c03cd9.png";

const img1 =
    "https://0.soompi.io/wp-content/uploads/2021/08/23110511/squid-game.jpeg";

const des =
    "Culpa adipisicing commodo aute dolore irure incididunt Lorem pariatur tempor. Nulla fugiat aliqua ea labore in irure. Labore proident do elit mollitEx incididunt commodo officia eiusmod proident sit. Ea ex incididunt incididunt cupidatat reprehenderit magna. Consequat aliqua sunt qui labore. Amet esse tempor minim quis sint velit ullamco veniam deserunt nisi reprehenderit enim consectetur.";

// hot and new
var textboxHeight = 130.0;
