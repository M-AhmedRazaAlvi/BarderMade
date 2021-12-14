import 'package:bartermade/auth/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  Future<bool> saveUser(User user) async {
    final SharedPreferences profs = await SharedPreferences.getInstance();
    profs.setString('name', user.name);
    profs.setString('email', user.email);
    profs.setString('phone', user.phone);
    profs.setString('type', user.type);
    profs.setString('token', user.token);
    // ignore: deprecated_member_use
    return profs.commit();
  }

  Future<User> getUser() async {
    final SharedPreferences profs = await SharedPreferences.getInstance();

    String name = profs.getString('name');
    String email = profs.getString('email');
    String phone = profs.getString('phone');
    String type = profs.getString('type');
    String token = profs.getString('token');
    String renewalToken = profs.getString('renewaltoken');
    return User(
      name: name,
      email: email,
      phone: phone,
      type: type,
      token: token,
      renewalToken: renewalToken,
    );
  }

  void removeUser() async {
    final SharedPreferences profs = await SharedPreferences.getInstance();
    profs.remove('name');
    profs.remove('email');
    profs.remove('phone');
    profs.remove('type');
    profs.remove('token');
  }

  Future<String> getToken() async {
    final SharedPreferences profs = await SharedPreferences.getInstance();
    String token = profs.getString("token");
    return token;
  }
}
