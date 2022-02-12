class Post {
  final String title;
  final String author;
  final String imageUrl;

  const Post({
    required this.title,
    required this.author,
    required this.imageUrl,
  });
}

final List<Post> posts = [
  const Post(
      title: 'Candy Shop',
      author: 'Mohamed Chahin',
      imageUrl: 'https://t7.baidu.com/it/u=4198287529,2774471735&fm=193&f=GIF'),
  const Post(
      title: 'Haere Cxx',
      author: 'Pixabay',
      imageUrl: 'https://t7.baidu.com/it/u=2529476510,3041785782&fm=193&f=GIF')
];
