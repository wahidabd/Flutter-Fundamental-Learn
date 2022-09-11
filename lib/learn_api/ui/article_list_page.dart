import 'package:flutter/material.dart';
import 'package:fundamental/learn_api/data/api/api_service.dart';
import 'package:fundamental/learn_api/data/model/article.dart';
import 'package:fundamental/learn_api/widgets/card_article.dart';

class ArticleListPage extends StatefulWidget {

  static const routeName = 'article_list';

  const ArticleListPage({super.key});

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  late Future<ArticlesResult> _article;

  @override
  void initState() {
    super.initState();
    _article = ApiService().topHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  Widget _buildList(BuildContext context) {
    return FutureBuilder(
      future: _article,
      builder: (context, AsyncSnapshot<ArticlesResult> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }else{
          if (snapshot.hasData){
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data?.articles.length,
              itemBuilder: (context, index){
                var article = snapshot.data?.articles[index];
                return CardArticle(article: article!);
              },
            );
          }else if (snapshot.hasError){
            return Center(
              child: Material(
                child: Text(snapshot.error.toString()),
              ),
            );
          } else {
            return const Material(child: Text(''),);
          }
        }
      },
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return Center();
  }

  Widget _buildIos(BuildContext context) {
    return Center();
  }
}
