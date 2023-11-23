import 'package:json_annotation/json_annotation.dart';

part 'page_result.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PageResult<T> extends Object {

  @JsonKey(name: 'curPage')
  int curPage;

  @JsonKey(name: 'datas')
  List<T>? data;

  @JsonKey(name: 'offset')
  int offset;

  @JsonKey(name: 'over')
  bool over;

  @JsonKey(name: 'pageCount')
  int pageCount;

  @JsonKey(name: 'size')
  int size;

  @JsonKey(name: 'total')
  int total;

  PageResult(this.curPage, this.data, this.offset, this.over, this.pageCount, this.size, this.total);

  factory PageResult.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$PageResultFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => _$PageResultToJson<T>(this, toJsonT);
}