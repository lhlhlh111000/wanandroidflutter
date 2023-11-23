import 'package:json_annotation/json_annotation.dart';

part 'wan_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class WanResponse<T> extends Object {
  @JsonKey(name: 'errorCode')
  int errorCode;

  @JsonKey(name: 'errorMsg')
  String errorMsg;

  @JsonKey(name: 'data')
  T? data;

  WanResponse({
    this.data,
    this.errorCode = 0,
    this.errorMsg = '',
  });

  factory WanResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$WanResponseFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => _$WanResponseToJson<T>(this, toJsonT);
}