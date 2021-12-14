import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:bartermade/auth/user.dart';
import 'package:bartermade/utils/app_url.dart';

import 'package:bartermade/utils/user_preference.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

enum Status {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut,
}

class AuthProvider extends ChangeNotifier {
  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;

  // ignore: unnecessary_getters_setters
  Status get loggedInStatus => _loggedInStatus;
  // ignore: unnecessary_getters_setters
  set loggedInStatus(Status value) {
    _loggedInStatus = value;
  }

  // ignore: unnecessary_getters_setters
  Status get registeredInStatus => _registeredInStatus;
  // ignore: unnecessary_getters_setters
  set registeredInStatus(Status value) {
    _registeredInStatus = value;
  }

  Future<Map<String, dynamic>> register(String email, String password) async {
    final Map<String, dynamic> apiBodyData = {
      'email': email,
      'password': password,
    };
    return await post(Uri.parse(AppUrl.register),
            body: json.encode(apiBodyData),
            headers: {'Content-type': 'application/json'})
        .then(onvalue)
        .catchError(onError);
  }

  static Future<FutureOr> onvalue(Response response) async {
    var result;

    final Map<String, dynamic> responseData = jsonDecode(response.body);
    print(responseData);
    if (response.statusCode == 200) {
      // ignore: unused_local_variable
      var userdata = responseData["date"];
      User authUser = User.fromJson(responseData);
      UserPreferences().saveUser(authUser);
      result = {
        'status': true,
        'message': "Successfully registered",
        'data': authUser,
      };
    } else {
      result = {
        'status': false,
        'message': "Successfully registered",
        'data': responseData
      };
    }
    return result;
  }

  static onError(error) {
    print('the error is ${error.detail}');
    return {
      'status': false,
      'message': "Unsuccessfully Request",
      'data': error
    };
  }

  Future<Map<String, dynamic>> login(
      String emailController, String passwordController) {}
}
