import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:flut_app/NewsApp/models/article_model.dart';

class News{

  List<ArticleModel> news =[];

  Future<void> getNews() async {
    String url = "http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=ca7ed6a8c3134ab6a5426dffd2320119";

 var response =await http.get(url);

 var jsonData = jsonDecode(response.body);

  if(jsonData["status"] == "ok") {
    jsonData["articles"].forEach((element) {
      if (element["urlToImage"] != null && element["description"] != null) {
        ArticleModel articleModel = ArticleModel(
            title: element["title"],
            author: element["author"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["context"]
        );
        news.add(articleModel);
      }
    }
        );
      }
    }
  }