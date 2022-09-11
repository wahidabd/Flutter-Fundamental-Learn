import 'package:flutter/material.dart';
import 'package:fundamental/first_module/news_app/article.dart';
import 'package:fundamental/first_module/news_app/detail_article_page.dart';

class NewsListPage extends StatelessWidget {
  static const routeName = '/article_list';

  const NewsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/article.json'),
        builder: (context, snapshot) {
          final List<Article> articles = parseArticles(snapshot.data);
          return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return _buildArticle(context, articles[index]);
              });
        },
      ),
    );
  }

  Widget _buildArticle(BuildContext context, Article article) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: Image.network(
        article.urlToImage,
        width: 100,
      ),
      title: Text(article.title),
      subtitle: Text(article.author),
      onTap: () {
        Navigator.pushNamed(context, DetailArticlePage.routeName,
            arguments: article
        );
      },
    );
  }
}
