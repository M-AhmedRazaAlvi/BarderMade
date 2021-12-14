import 'dart:ui';

import 'package:bartermade/screens/notifications/categories.dart';
import 'package:bartermade/screens/notifications/notification67.dart';
import 'package:bartermade/screens/notifications/notification79.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/buttons.dart';
import 'package:bartermade/widgets/notifications_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Inventory/frame22.dart';

class Notifications64 extends StatefulWidget {
  const Notifications64({Key key}) : super(key: key);

  @override
  _Notifications64State createState() => _Notifications64State();
}

class _Notifications64State extends State<Notifications64> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkAppBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.pinkAppBar,
        leading: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Categories()));
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
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'All',
                          style: TextStyle(color: AppColors.pinkAppBar),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Notifications67()));
                        },
                        child: Stack(clipBehavior: Clip.none, children: [
                          Positioned(
                              top: 0,
                              right: -5,
                              child: CircleAvatar(
                                  radius: 3, backgroundColor: Colors.yellow)),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Request',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ]),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Notifications79()));
                        },
                        child: Stack(clipBehavior: Clip.none, children: [
                          Positioned(
                              top: 0,
                              right: -5,
                              child: CircleAvatar(
                                  radius: 3, backgroundColor: Colors.yellow)),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
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
                          "1d Ago",
                          style: TextStyle(
                              color: AppColors.pinkAppBar,
                              fontWeight: FontWeight.bold),
                        )),
                    JohnDeo(
                      texts: "want to trade with you",
                    ),

                    ///////////////////////////////////////////////////////////////////////////////////////////
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: MediaQuery.of(context).size.height * .09,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: .4))),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Row(
                                children: [
                                  Container(
                                      width: 40,
                                      height: 40,
                                      child: Image.asset(
                                          "assets/images/girl.png")),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                  fontSize: 10,
                                                  color: Colors.black38),
                                            ),
                                            Text(
                                              " Follow Back",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.lightBlue[300]),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                              Text("2:23",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black38))
                            ],
                          ),
                          Container(
                            // margin: EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                outlinebutton(text1: "  Deny  "),
                                SizedBox(width: 5),
                                ColorsButtons(
                                  color1: AppColors.buttonGreen,
                                  text1: "Accept",
                                  onCountSelected: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return alertButtonwidget();
                                        });
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    johnDoewidget(
                        text11: "Follow", colors11: Color(0xff7ECDDE)),
                    johnDoewidget(
                        text11: "Trade Again", colors11: AppColors.buttonGreen),

                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 25, top: 10),
                      child: Text(
                        "All notifications",
                        style: TextStyle(
                            color: AppColors.pinkAppBar,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Bartermade(),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: MediaQuery.of(context).size.height * .09,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: .4))),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          color: AppColors.pinkAppBar,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Text(
                                          "B",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Bartermade",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          "Your trade with @Ali23 Has been sheduled",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black38),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text("2:23",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black38))
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ColorsButtons(
                                  color1: AppColors.buttonGreen,
                                  text1: "    Ok    ",
                                  onCountSelected: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return alertButtonwidget();
                                        });
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    JohnDeo(texts: "Hi let's trade"),
                    JohnDeo(texts: "Hi let's trade"),
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
