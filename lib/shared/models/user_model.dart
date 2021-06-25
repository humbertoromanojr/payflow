import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  // constructor
  UserModel({required this.name, this.photoURL});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photoURL: map['photoURL']);
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  // parse
  Map<String, dynamic> toMap() => {
        "name": name,
        "photoURL": photoURL,
      };

  String toJson() => jsonEncode(toMap());
}
