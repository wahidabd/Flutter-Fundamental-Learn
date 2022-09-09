import 'package:flutter/material.dart';
import 'package:fundamental/academy/learning_path_page.dart';
import 'package:fundamental/news_app/article.dart';
import 'package:fundamental/news_app/article_web_view.dart';
import 'package:fundamental/news_app/detail_article_page.dart';
import 'package:fundamental/theme/styles.dart';

import 'news_app/news_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return

    // return MaterialApp(
    //   title: 'Flutter',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const LearningPathPage(),
    // );
    // return MaterialApp(
    //   title: 'News App',
    //   theme: ThemeData(
    //     colorScheme: Theme.of(context).colorScheme.copyWith(
    //           primary: primaryColor,
    //           onPrimary: Colors.black,
    //           secondary: secondaryColor,
    //         ),
    //     appBarTheme: const AppBarTheme(elevation: 0),
    //     textTheme: myTextTheme,
    //     primarySwatch: Colors.blue,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //     elevatedButtonTheme: ElevatedButtonThemeData(
    //       style: ElevatedButton.styleFrom(
    //         primary: secondaryColor,
    //         onPrimary: Colors.white,
    //         textStyle: const TextStyle(),
    //         shape: const RoundedRectangleBorder(
    //           borderRadius: BorderRadius.all(
    //             Radius.circular(0),
    //           ),
    //         )
    //       ),
    //     ),
    //   ),
    //   initialRoute: NewsListPage.routeName,
    //   routes: {
    //     NewsListPage.routeName: (context) => const NewsListPage(),
    //     DetailArticlePage.routeName: (context) => DetailArticlePage(
    //         article: ModalRoute.of(context)?.settings.arguments as Article),
    //     ArticleWebView.routeName: (context) => ArticleWebView(
    //         url: ModalRoute.of(context)?.settings.arguments as String),
    //   },
    // );
  }
}
