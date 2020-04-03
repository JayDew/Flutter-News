import "dart:convert";
import 'package:flutterappnews/models/article.dart';
import 'package:http/http.dart';


class HttpService {


  static const String URL = "https://fluffy-news.herokuapp.com";
  
  Future<List<Article>> getArticles() async {

    Response res = await get(URL);
    
    if(res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<dynamic> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      //we may want a better error handling strategy
      throw "Cannot get articles";
    }
  }
}