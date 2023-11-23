import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanandroidflutter/ui/discover/discover.dart';
import 'package:wanandroidflutter/ui/home/home.dart';
import 'package:wanandroidflutter/ui/main/main_controller.dart';
import 'package:wanandroidflutter/ui/mine/mine.dart';

class MainPage extends StatefulWidget {

  const MainPage({super.key});

  @override
  State createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Obx(() {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Discover',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Mine',
              )
            ],
            onTap: mainController.updateIndex,
            currentIndex: mainController.currentIndex.value,
          ),
          body: IndexedStack (
            index: mainController.currentIndex.value,
            children: const [
              HomePage(),
              DiscoverPage(),
              MinePage(),
            ],
          ),
        );
      }),
    );
  }
}