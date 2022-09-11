import 'package:flutter/material.dart';
import 'package:fundamental/first_module/news_app/article.dart';

import 'article_web_view.dart';

class DetailArticlePage extends StatelessWidget {
  static const routeName = '/detail_article';
  final Article article;

  const DetailArticlePage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(article.urlToImage),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(article.description),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    article.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const Divider(color: Colors.grey),
                  Text('Date: ${article.publishedAt}'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Author: ${article.author}'),
                  const Divider(color: Colors.grey),
                  Text(
                    article.content,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, ArticleWebView.routeName,
                        arguments: article.url
                    );
                  }, child: const Text('Read more..'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
