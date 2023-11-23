// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageResult<T> _$PageResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PageResult<T>(
      json['curPage'] as int,
      (json['datas'] as List<dynamic>?)?.map(fromJsonT).toList(),
      json['offset'] as int,
      json['over'] as bool,
      json['pageCount'] as int,
      json['size'] as int,
      json['total'] as int,
    );

Map<String, dynamic> _$PageResultToJson<T>(
  PageResult<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'curPage': instance.curPage,
      'datas': instance.data?.map(toJsonT).toList(),
      'offset': instance.offset,
      'over': instance.over,
      'pageCount': instance.pageCount,
      'size': instance.size,
      'total': instance.total,
    };
