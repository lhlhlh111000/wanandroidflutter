import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:wanandroidflutter/data/apis.dart';
import 'package:wanandroidflutter/model/export_model.dart';

part 'wan_request.g.dart';

@RestApi(baseUrl: Apis.baseUrl)
abstract class WanRequest {

  factory WanRequest(Dio dio, {String baseUrl}) = _WanRequest;

  static WanRequest? _request;

  static WanRequest get() {
    if (_request != null) {
      return _request!;
    }

    Dio dio = Dio();

    _request ??= WanRequest(dio);
    return _request!;
  }

  @GET(Apis.getArticleList)
  Future<WanResponse<PageResult<ArticleItem>>> getArticleList(@Path("pageIndex") int pageIndex);
}