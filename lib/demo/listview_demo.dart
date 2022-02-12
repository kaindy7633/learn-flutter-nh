import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
          const SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
