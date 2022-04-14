import 'dart:convert';

class Article {
  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String publishedAt;
  late String content;

  Article({
   required this.author,
   required this.title,
   required this.description,
   required this.url,
   required this.urlToImage,
   required this.publishedAt,
   required this.content,
  });

  Article.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
}

List<Article>parseArticles(String? json){
  if(json == null) {
    return [];
  }
  final List parsed = jsonDecode(json);
  return parsed.map((json) => Article.fromJson(json)).toList();
}