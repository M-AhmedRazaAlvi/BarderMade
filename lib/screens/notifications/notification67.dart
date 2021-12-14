import 'dart:ui';

import 'package:bartermade/screens/notifications/notification64.dart';
import 'package:bartermade/screens/notifications/notification79.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications67 extends StatefulWidget {
  const Notifications67({Key key}) : super(key: key);

  @override
  _Notifications67State createState() => _Notifications67State();
}

class _Notifications67State extends State<Notifications67> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkAppBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.pinkAppBar,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Notifications64()));
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          "Notifications",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  //color: Colors.blue,
                  margin: EdgeInsets.only(left: 30, top: 20),
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Notifications64()));
                        },
                        child: Stack(children: [
                          Positioned(
                              top: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.yellow,
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Text(
                              'All',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'Request',
                          style: TextStyle(color: AppColors.pinkAppBar),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Notifications79()));
                        },
                        child: Stack(children: [
                          Positioned(
                              top: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.yellow,
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Text(
                              'Garage Sale',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),

                //////////////////////////////////
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 20, left: 30, bottom: 10),
                        child: Text(
                          "New Request",
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.pinkAppBar,
                              fontWeight: FontWeight.bold),
                        )),

                    ///////////////////////////////////////////////////////////////////////////////////////////
                    johnMiller(),
                    johnMiller(),
                    johnMiller(),

                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "Pendings",
                        style: TextStyle(
                            color: AppColors.pinkAppBar,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    johnMiller(),
                    johnMiller(),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "Suggestions",
                        style: TextStyle(
                            color: AppColors.pinkAppBar,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    JohnMiller2(),
                    JohnMiller2(),
                    JohnMiller2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JohnMiller2 extends StatelessWidget {
  const JohnMiller2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width * .85,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .4))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(right: 10),
                  child: Image.asset("assets/images/girl.png"),
                ),
                Text(
                  "John Miller",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlue[300],
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Follow",
                      style: TextStyle(
                          color: Colors.lightBlue[300],
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(Icons.close, size: 15))
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class johnMiller extends StatelessWidget {
  const johnMiller({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * .1,
      width: MediaQuery.of(context).size.width * .85,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .4))),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        child: Image.asset("assets/images/girl.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Miller",
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            Text(
                              "isRequested to follow you ",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black38),
                            ),
                            Text(
                              "  Follow Back",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.lightBlue[300]),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Text("2:23",
                    style: TextStyle(fontSize: 10, color: Colors.black38))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                outlinebutton(text1: "  Deny  "),
                SizedBox(width: 5),
                ColorsButtons(color1: AppColors.buttonGreen, text1: "Accept")
              ],
            ),
          )
        ],
      ),
    );
  }
}
