import 'package:flutter/material.dart';
import 'package:wanandroidflutter/ui/detail/detail.dart';
import 'package:wanandroidflutter/ui/main/index.dart';

class RouterTable {

  static const String home = '/';

  static const String detail = '/detail';

  static Route onGenerateRoute<T extends Object>(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        Map<String, WidgetBuilder> routeTables = {
          home: (context) => const MainPage(),
          detail: (context) => DetailPage(url: settings.arguments as String,),
        };

        if (routeTables.containsKey(settings.name)) {
          return routeTables[settings.name]!(context);
        }

        return routeTables[home]!(context);
      }
    );
  }
}