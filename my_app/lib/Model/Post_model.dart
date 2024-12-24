class Post {
  final int id;
  final String tittle;
  final String body;

  Post({
    required this.id,
    required this.tittle,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      tittle: json['title'],
      body: json['body'],
    );
  }
}
