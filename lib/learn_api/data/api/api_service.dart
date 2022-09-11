import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:fundamental/learn_api/data/model/article.dart';

class ApiService {
  static const String _baseUrl = 'https://newsapi.org/v2/';
  static const String _apiKey = '5b451eae6c2e4deebf2840f83664a528';
  static const String _category = 'business';
  static const String _country = 'id';

  Future<ArticlesResult> topHeadlines() async {
    final response = await http.get(Uri.parse("${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey"));
    if(response.statusCode == 200){
      return ArticlesResult.fromJson(json.decode(response.body));
    }else{
      throw Exception('Failed to load api');
    }
  }
}