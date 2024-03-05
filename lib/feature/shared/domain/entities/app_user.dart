class AppUser {
  int? id;
  String name;
  String email;
  String username;

  AppUser({this.id, this.name = "", this.email = "", this.username = ""});

  factory AppUser.fromJson(Map<String, dynamic> json) => AppUser(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "username": username,
  };
}
