import 'dart:async';

import 'package:bartermade/auth/barter61.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BarterMade11 extends StatefulWidget {
  const BarterMade11({Key key}) : super(key: key);

  @override
  _BarterMade11State createState() => _BarterMade11State();
}

class _BarterMade11State extends State<BarterMade11> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Barter61())));

    return Scaffold(
      backgroundColor: AppColors.pinkColor,
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 250),
        child: InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Barter61()),
            // );
          },
          child: Column(
            children: [
              Image.asset("assets/images/Group 1.png"),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "BARTERMADE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
