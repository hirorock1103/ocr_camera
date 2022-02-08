import 'package:flutter/material.dart';
import 'package:ocr_camera/models/model/news_item.dart';
import 'package:ocr_camera/models/repository/news_repository.dart';

class NewsListViewModel{


  NewsRepository newsRepository = NewsRepository();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  NewsItem _newsItem = NewsItem();
  NewsItem get newsItem => _newsItem;

  List<NewsItem> _newsList = [];
  List<NewsItem> get newsList => _newsList;

  Future<List<NewsItem>> getNews() async{
    _isLoading = true;
    _newsList = await newsRepository.getNews();
    _isLoading = false;
    return _newsList;
  }


}
