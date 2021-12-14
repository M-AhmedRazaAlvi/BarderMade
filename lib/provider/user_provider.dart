import 'package:bartermade/auth/user.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  User _user = User();
  User get user => _user;
  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
