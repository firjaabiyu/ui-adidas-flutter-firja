import 'package:meta/meta.dart';
import 'dart:convert';

class AuthResponseModel {
  final String token;
  final User user;

  AuthResponseModel({
    required this.token,
    required this.user,
  });

  AuthResponseModel copyWith({
    String? token,
    User? user,
  }) =>
      AuthResponseModel(
        token: token ?? this.token,
        user: user ?? this.user,
      );

  factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
    token: json["token"],
    user: User.fromMap(json["user"]),
  );

  Map<String, dynamic> toMap() => {
    "token": token,
    "user": user.toMap(),
  };
}

class User {
  final int id;
  final String name;
  final String email;
  final dynamic phone;
  final String role;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  User copyWith({
    int? id,
    String? name,
    String? email,
    dynamic phone,
    String? role,
    dynamic emailVerifiedAt,
    dynamic twoFactorSecret,
    dynamic twoFactorRecoveryCodes,
    dynamic twoFactorConfirmedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        role: role ?? this.role,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    role: json["role"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "role": role,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
