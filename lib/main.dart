import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/my_theme.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';
import 'package:netfilx_clone/providers/hn_lazy_loader_pro/hn_lazy_loader_pro.dart';
import 'package:netfilx_clone/providers/hot_new_provider/hot_new_pro.dart';
import 'package:netfilx_clone/providers/is_in_view/is_in_view_pro.dart';
import 'package:netfilx_clone/providers/load_video_link/load_video_link_pro.dart';
import 'package:netfilx_clone/providers/popularMovies/popular_movies_pro.dart';
import 'package:netfilx_clone/providers/search_pro.dart';
import 'package:netfilx_clone/providers/video_loader_pro/video_loader_pro.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import 'pages/my_app/my_home.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SearchProvider()),
      ChangeNotifierProvider(create: (_) => PopularMoviesPro()),
      ChangeNotifierProvider(create: (_) => HotAndNewProvider()),
      ChangeNotifierProvider(create: (_) => VideoLoaderProvider()),
      ChangeNotifierProvider(create: (_) => LoadVideoLinkPro()),
      ChangeNotifierProvider(create: (_) => IsInViewProvider()),
      ChangeNotifierProvider(create: (_) => HotAndNewLazyLoaderPro()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyHome()),
      theme: theme,
    );
  }
}
//MyHome

