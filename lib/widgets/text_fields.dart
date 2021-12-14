import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFields {
  static Widget emailTextField(BuildContext context,
      {String hintText,
      TextEditingController controller,
      void Function(String) onsaved,
      String validaterMsg}) {
    return TextFormField(
      onSaved: onsaved,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.only(left: 15),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      validator: (value) {
        Pattern pattern =
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regex = new RegExp(pattern);
        return (!regex.hasMatch(value)) ? validaterMsg : null;
      },
    );
  }

  static Widget passwordTextField(
    BuildContext context, {
    String hintText,
    TextEditingController controller,
    void Function(String) onsaved,
    String validaterMsg,
  }) {
    return TextFormField(
      onSaved: onsaved,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.only(left: 15),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.visibility_off, color: Colors.grey),
          )),
      validator: (value) {
        return (value.length < 1) ? validaterMsg : null;
      },
    );
  }

  // ignore: non_constant_identifier_names
  static Widget TextFieldWidget(BuildContext context,
      {String hintText,
      TextEditingController controller,
      void Function(String) onsaved,
      String validaterMsg}) {
    // ignore: unused_local_variable

    return TextFormField(
      onSaved: onsaved,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.only(left: 15),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return validaterMsg;
        }
        return null;
      },
    );
  }

  // ignore: non_constant_identifier_names
  static Widget PhoneNumberWidget(BuildContext context,
      {String hintText,
      TextEditingController controller,
      void Function(String) onsaved,
      String validaterMsg}) {
    return TextFormField(
      controller: controller,
      onSaved: onsaved,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.only(left: 15),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return validaterMsg;
        }
        return null;
      },
    );
  }
}
