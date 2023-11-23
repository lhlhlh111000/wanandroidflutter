import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanandroidflutter/ui/home/home_controller.dart';
import 'package:wanandroidflutter/ui/view/article_item_view.dart';

class HomePage extends StatelessWidget {

  final HomeController controller = Get.put(HomeController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ArticleItemView(articleItem: controller.articleList[index]);
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: controller.articleList.length,
        ),
      );
    });
  }
}