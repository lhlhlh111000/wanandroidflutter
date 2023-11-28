import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wanandroidflutter/model/export_model.dart';
import 'package:wanandroidflutter/route/router_table.dart';

class ArticleItemView extends StatelessWidget {

  final ArticleItem articleItem;
  
  const ArticleItemView({super.key, required this.articleItem});

  @override
  Widget build(BuildContext context) {
    String author = '';
    if (articleItem.author?.isNotEmpty == true) {
      author = '分享人:${articleItem.author}';
    } else if (articleItem.shareUser?.isNotEmpty == true) {
      author = '分享人:${articleItem.shareUser}';
    }

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(RouterTable.detail, arguments: articleItem.link ?? '');
      },
      child: Padding(
        padding: EdgeInsets.all(14.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(articleItem.title ?? '', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),),
            SizedBox(height: 14.sp,),
            Row(
              children: [
                Text(author, style: TextStyle(fontSize: 14.sp),),
              ],
            )
          ],
        ),
      ),
    );
  }
}