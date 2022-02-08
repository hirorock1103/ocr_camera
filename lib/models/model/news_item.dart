import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_item.g.dart';

@JsonSerializable()
class NewsItem  {

  final String? title;
  final String? date;
  @JsonKey(name:"details" ) final String? contents;

  NewsItem({this.title, this.date,  this.contents, });

  factory NewsItem.fromJson(Map<String, dynamic> json) => _$NewsItemFromJson(json);
  Map<String, dynamic> toJson() => _$NewsItemToJson(this);
}