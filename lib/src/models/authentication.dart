class LoginEmailResponse {
  final String message;
  final User user;
  final String newLoginTokenID;

  LoginEmailResponse({required this.message, required this.user, required this.newLoginTokenID});

  factory LoginEmailResponse.fromJson(Map<String, dynamic> json) {
    return LoginEmailResponse(
      message: json['message'] ?? '',
      user: User.fromJson(json['user'] ?? {}),
      newLoginTokenID: json['newLoginTokenID'] ?? '',
    );
  }
}

class LoginPhoneResponse {
  final String message;
  final User user;
  final String newLoginTokenID;

  LoginPhoneResponse({required this.message, required this.user, required this.newLoginTokenID});

  factory LoginPhoneResponse.fromJson(Map<String, dynamic> json) {
    return LoginPhoneResponse(
      message: json['message'] ?? '',
      user: User.fromJson(json['user'] ?? {}),
      newLoginTokenID: json['newLoginTokenID'] ?? '',
    );
  }
}

class SignupResponse {
  final String message;
  final String loginTokenID;

  SignupResponse({required this.message, required this.loginTokenID});

  factory SignupResponse.fromJson(Map<String, dynamic> json) {
    return SignupResponse(
      message: json['message'] ?? '',
      loginTokenID: json['loginTokenID'] ?? '',
    );
  }
}

class User {
  final int id;
  final String name;
  final String number;
  final String email;
  final String password;
  final String address;
  final String loginTokenID;
  final String profileImageUrl;
  final String hotelOwnerNumber;

  User({
    required this.id,
    required this.name,
    required this.number,
    required this.email,
    required this.password,
    required this.address,
    required this.loginTokenID,
    required this.profileImageUrl,
    required this.hotelOwnerNumber,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      number: json['number'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
      address: json['address'] ?? '',
      loginTokenID: json['loginTokenID'] ?? '',
      profileImageUrl: json['profileImageUrl'] ?? '',
      hotelOwnerNumber: json['hotelOwnerNumber'] ?? '',
    );
  }
}
