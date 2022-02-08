// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) => NewsItem(
      title: json['title'] as String?,
      date: json['date'] as String?,
      contents: json['details'] as String?,
    );

Map<String, dynamic> _$NewsItemToJson(NewsItem instance) => <String, dynamic>{
      'title': instance.title,
      'date': instance.date,
      'details': instance.contents,
    };
