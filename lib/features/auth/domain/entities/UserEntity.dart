abstract class UserEntity {
  final String email;
  final String password;
  final String name;
  final String phoneNumber;
  final String address;
  final String photoUrl;
  // final String role;

  UserEntity({
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.photoUrl,
    // required this.role
  });
}
