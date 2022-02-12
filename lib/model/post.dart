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
      imageUrl: 'https://t7.baidu.com/it/u=2529476510,3041785782&fm=193&f=GIF'),
  const Post(
      title: 'Quary Doger',
      author: 'Kaindy.Liu',
      imageUrl: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF'),
  const Post(
      title: 'Kail Yeation',
      author: 'Harrey-Chen',
      imageUrl: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF'),
  const Post(
      title: 'Acoue Queen',
      author: 'Yeture HEHE',
      imageUrl: 'https://t7.baidu.com/it/u=2851687453,2321283050&fm=193&f=GIF')
];
