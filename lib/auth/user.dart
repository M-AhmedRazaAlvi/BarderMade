class User {
  String name;
  String email;
  String phone;
  String type;
  String token;
  String renewalToken;
  User(
      {this.name,
      this.email,
      this.phone,
      this.type,
      this.token,
      this.renewalToken});
  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
      name: responseData['Username'],
      email: responseData['Email'],
      phone: responseData['phone'],
      type: responseData['type'],
      token: responseData['token'],
      renewalToken: responseData['token'],
    );
  }
}
