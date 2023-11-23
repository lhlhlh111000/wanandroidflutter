import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wanandroidflutter/model/export_model.dart';

class ArticleItemView extends StatelessWidget {

  final ArticleItem articleItem;
  
  const ArticleItemView({super.key, required this.articleItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 50.sp,
      child: Center(child: Text(articleItem.title ?? ''),),
    );
  }
}