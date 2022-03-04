import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/my_theme.dart';
import 'package:netfilx_clone/providers/search_pro.dart';
import 'package:provider/provider.dart';

import 'pages/my_app/my_home.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => SearchProvider())],
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
