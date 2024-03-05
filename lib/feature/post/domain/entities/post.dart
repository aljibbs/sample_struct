class Post {
  int? id;
  int userId;
  String title, body;

  Post(
      {this.id, required this.userId, required this.title, required this.body});

  factory Post.fromJson(json) => Post(
        id: json['id'],
        userId: json['userId'],
        title: json['title'],
        body: json['body'],
      );

  static List<Post> fromJsonList(jsonList) {
    Iterable data = jsonList;
    if (data.isNotEmpty) {
      return data.map((res) => Post.fromJson(res)).toList();
    }

    return [];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'title': title,
        'body': body,
      };
}
