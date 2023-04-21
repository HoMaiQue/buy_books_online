import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserData {
  String displayName;
  String avatar;
  String token;
  UserData({
    required this.displayName,
    required this.avatar,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'avatar': avatar,
      'token': token,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      displayName: map['displayName'] as String,
      avatar: map['avatar'] as String,
      token: map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) => UserData.fromMap(json.decode(source) as Map<String, dynamic>);
}
