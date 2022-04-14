import 'package:flutter/material.dart';
import 'package:newsapp/article.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';
  final Article article;
  const ArticleDetailPage({required this.article, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Article Detail'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(article.urlToImage),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          article.title,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Text(
                          'Date: ${article.publishedAt}',
                        ),
                        SizedBox(height: 10),
                        Text('Author: ${article.author}'),
                        Divider(color: Colors.grey),
                        Text(
                          article.content,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          child: Text('Read More'),
                          onPressed: () {},
                        ),
                      ]))
            ],
          ),
        ));
  }
}
