import 'package:get/get.dart';
import 'package:wanandroidflutter/data/wan_request.dart';
import 'package:wanandroidflutter/model/export_model.dart';

class HomeController extends GetxController {

  var articleList = <ArticleItem>[].obs;

  int pageIndex = 0;

  @override
  void onInit() {
    super.onInit();

    requestArticleList();
  }

  void requestArticleList() {
    WanRequest.get().getArticleList(pageIndex).then((value) => {
      articleList.value = value.data?.data ?? [],
    }).catchError((error) {

    });
  }
}