import 'package:flutter/material.dart';
import 'package:fundamental/first_module/news_app/article_web_view.dart';
import 'package:fundamental/first_module/theme/styles.dart';
import 'package:fundamental/learn_api/data/model/article.dart';
import 'package:fundamental/learn_api/ui/article_detail_page.dart';
import 'package:fundamental/learn_api/ui/article_list_page.dart';
import 'package:fundamental/learn_api/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // State Management with Provider
    // return ChangeNotifierProvider(
    //   create: (context) => DoneModuleProvider(),
    //   child: MaterialApp(
    //     title: 'Flutter',
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //       visualDensity: VisualDensity.adaptivePlatformDensity
    //     ),
    //     home: const ModulePage(),
    //     debugShowCheckedModeBanner: false,
    //   ),
    // );

    // return MaterialApp(
    //   title: 'Flutter',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const LearningPathPage(),
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              onPrimary: Colors.black,
              secondary: secondaryColor,
            ),
        appBarTheme: const AppBarTheme(elevation: 0),
        textTheme: myTextTheme,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: secondaryColor,
              onPrimary: Colors.white,
              textStyle: const TextStyle(),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(0),
                ),
              )),
        ),
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
              article: ModalRoute.of(context)?.settings.arguments as Article,
        ),
        ArticleWebView.routeName: (context) => ArticleWebView(
          url: ModalRoute.of(context)?.settings.arguments as String,
        ),
      },
    );
  }
}
