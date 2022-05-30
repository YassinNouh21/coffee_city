import 'package:equatable/equatable.dart';

class AuthUser extends Equatable {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoUrl;
  final String? phoneNumber;
  final String? address;

  const AuthUser({
    required this.uid,
    this.displayName,
    this.email,
    this.photoUrl,
    this.phoneNumber,
    this.address,
  });

  static const empty = AuthUser(uid: '', displayName: '');

  bool get isSignInByEmail => email != null;

  bool get isSignInByPhone => phoneNumber != null;

  bool get isEmpty => this == AuthUser.empty;

  bool get isNotEmpty => this != AuthUser.empty;

  Map<String, String?> toMap() {
    return {
      'uid': uid,
      'displayName': displayName,
      'email': email,
      'photoUrl': photoUrl,
      'phoneNumber': phoneNumber,
      'address': address,
    };
  }
  
  AuthUser copyWith({
    String? email,
    String? displayName,
    String? photoUrl,
    String? phoneNumber,
    String? address,
  }) {
    return AuthUser(
      uid: uid,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
    );
  }

  @override
  List<Object?> get props => [
        uid,
        email,
        displayName,
        photoUrl,
        phoneNumber,
        address,
      ];
}
