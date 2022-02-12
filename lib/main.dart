import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 不显示右上角的DEBUG图标
      home: const Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow, // 主题颜色
          splashColor: Colors.white70, // 水波纹效果颜色
          highlightColor: const Color.fromRGBO(255, 255, 255, 0.5)), // 点击高亮颜色
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: const Text('Hello World'),
            actions: [
              IconButton(
                onPressed: () => debugPrint("Search button is pressed."),
                icon: const Icon(Icons.search),
                tooltip: 'Search',
              )
            ],
            elevation: 0.0,
            bottom: const TabBar(
                unselectedLabelColor: Colors.black38, // 未选中标签颜色
                indicatorColor: Colors.black54, // Tab底部指示器的颜色
                indicatorSize: TabBarIndicatorSize.label, // 指示器的大小为图标大小
                indicatorWeight: 1.0, // 变细
                tabs: [
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike))
                ]),
          ),
          body: const TabBarView(children: [
            ListViewDemo(),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
          ]),
          drawer: const DrawerDemo(),
          bottomNavigationBar: const BottomNavigationBarDemo(),
        ));
  }
}
