// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WanResponse<T> _$WanResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    WanResponse<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      errorCode: json['errorCode'] as int? ?? 0,
      errorMsg: json['errorMsg'] as String? ?? '',
    );

Map<String, dynamic> _$WanResponseToJson<T>(
  WanResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
