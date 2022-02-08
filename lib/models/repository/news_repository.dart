import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ocr_camera/models/model/news_item.dart';
import 'package:http/http.dart' as http;

class NewsRepository{

   static const String API_URL = "https://api.sssapi.app/1CRqmuOurPBZR32g7sTIE";

   Future<List<NewsItem>> getNews() async{

      List<NewsItem> list = [];

      final Uri uri = Uri.parse(API_URL);
      final response = await http.get(uri);

      if(response.statusCode == 200){

         var responseBody = response.body;
         var parsedBody = jsonDecode(responseBody);
         var data = parsedBody as List;
         return data.map((e) =>  NewsItem.fromJson(e)).toList();

      }

      return list;

   }

}