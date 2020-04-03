import 'package:flutter/material.dart';
import 'package:flutterappnews/models/article.dart';

import 'ArticlePage.dart';

class NewsArticle extends StatelessWidget {
  final Article _article;

  NewsArticle(this._article);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // GestureDetector makes a card clickable
      onTap: () => navigateToSubPage(context),
      child: Card(
        child: ListTile(
          leading: FlutterLogo(size: 72.0),
          title: Text(_article.title, style: Theme.of(context).textTheme.title),
          subtitle: Text(_article.author),
          trailing: Icon(Icons.plus_one),
          isThreeLine: true,
        ),
      ),
    );
  }

  Future navigateToSubPage(BuildContext context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ArticlePage(_article)));
  }
}
