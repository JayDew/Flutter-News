import 'package:flutter/cupertino.dart';

class Article {
  int id;
  String title;
  String author;
  String text;

  //the constructor
  Article(
      {@required this.id,
      @required this.title,
      @required this.author,
      @required this.text});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'] as int,
      title: json['title'] as String,
      author: json['author'] as String,
      text: json['text'] as String,
    );
  }
}
