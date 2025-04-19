import 'package:daycarefirst/features/auth/domain/entities/UserEntity.dart';

class User extends UserEntity {
  User({
    required super.email,
    required super.password,
    required super.name,
    required super.phoneNumber,
    required super.address,
    required super.photoUrl,
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      address: json['address'],
      photoUrl: json['photoUrl'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'phoneNumber': phoneNumber,
      'address': address,
      'photoUrl': photoUrl,
    };
  }
}
