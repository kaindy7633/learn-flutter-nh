import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  const ViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({Key? key}) : super(key: key);

  Widget _gridItemBuilder(BuildContext context, int index) {
    return Image.network(
      posts[index].imageUrl,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  const GridViewExtentDemo({Key? key}) : super(key: key);

  List<Widget> _buildTiles(int length) {
    return List.generate(
        100,
        (int index) => Container(
              color: Colors.grey[400],
              alignment: const Alignment(0.0, 0.0),
              child: Text('Item $index',
                  style: const TextStyle(fontSize: 18.0, color: Colors.grey)),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 16.0, // 交叉轴上子项目之间的间距
        mainAxisSpacing: 16.0, // 主轴上子项目之间的间距
        // scrollDirection: Axis.horizontal, // 横向滚动，默认为纵向滚动
        children: _buildTiles(100));
  }
}

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({Key? key}) : super(key: key);

  List<Widget> _buildTiles(int length) {
    return List.generate(
        100,
        (int index) => Container(
              color: Colors.grey[400],
              alignment: const Alignment(0.0, 0.0),
              child: Text('Item $index',
                  style: const TextStyle(fontSize: 18.0, color: Colors.grey)),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3, // 每行列表的数量
        crossAxisSpacing: 16.0, // 交叉轴上子项目之间的间距
        mainAxisSpacing: 16.0, // 主轴上子项目之间的间距
        // scrollDirection: Axis.horizontal, // 横向滚动，默认为纵向滚动
        children: _buildTiles(100));
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  const PageViewBuilderDemo({Key? key}) : super(key: key);

  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          right: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                posts[index].author,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: posts.length, itemBuilder: _pageItemBuilder);
  }
}

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false, // 控制页面是否自动翻页
      // reverse: true, // 是否反转显示子项目
      // scrollDirection: Axis.vertical, // 垂直滚动子项目，默认 horizontal 左右滚动
      // onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
          initialPage: 0, // 设置初始化页面，从 0 开始
          keepPage: false, // 是否记住当前页面
          viewportFraction: 1.0 // 页面占用可视窗口的百分比
          ),
      children: [
        Container(
          color: Colors.brown[900],
          alignment: const Alignment(0.0, 0.0),
          child: const Text('ONE',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        Container(
          color: Colors.grey[900],
          alignment: const Alignment(0.0, 0.0),
          child: const Text('TWO',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: const Alignment(0.0, 0.0),
          child: const Text('THREE',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
      ],
    );
  }
}
