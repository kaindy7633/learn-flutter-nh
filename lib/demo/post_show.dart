// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  const PostShow({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Image.network(post.imageUrl),
          Container(
            padding: const EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  post.author,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(height: 32.0),
                Text(
                  post.description,
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
