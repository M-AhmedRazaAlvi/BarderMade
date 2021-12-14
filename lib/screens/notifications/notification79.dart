import 'package:bartermade/screens/Inventory/inven83.dart';
import 'package:bartermade/screens/notifications/notification64.dart';
import 'package:bartermade/screens/notifications/notification67.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../Inventory/frame22.dart';

class Notifications79 extends StatefulWidget {
  const Notifications79({Key key}) : super(key: key);

  @override
  _Notifications79State createState() => _Notifications79State();
}

class _Notifications79State extends State<Notifications79> {
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
            child: Icon(Icons.arrow_back, size: 35)),
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
                                  radius: 3, backgroundColor: Colors.yellow)),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              '  All  ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ]),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Notifications67()));
                        },
                        child: Stack(children: [
                          Positioned(
                              top: 0,
                              right: 0,
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
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'Garage Sale',
                          style: TextStyle(color: AppColors.pinkAppBar),
                        ),
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
                        margin: EdgeInsets.only(top: 20, left: 30),
                        child: Text(
                          "All Notifications",
                          style: TextStyle(
                              color: AppColors.pinkAppBar,
                              fontWeight: FontWeight.bold),
                        )),

                    ///////////////////////////////////////////////////////////////////////////////////////////
                    JohnDoe1(
                        text1: "John Doe", imgUrl: "assets/images/Avatar.png"),
                    JohnDoe1(
                        text1: "John Miller", imgUrl: "assets/images/girl.png"),
                    JohnDoe1(
                        text1: "John Miller", imgUrl: "assets/images/girl.png"),
                    JohnDoe1(
                        text1: "John john", imgUrl: "assets/images/girl.png"),
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

class JohnDoe1 extends StatelessWidget {
  final String text1;
  final imgUrl;
  const JohnDoe1({
    Key key,
    this.text1,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * .1,
      width: MediaQuery.of(context).size.width * .9,
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
                        margin: EdgeInsets.only(right: 10),
                        height: 40,
                        width: 40,
                        child: Image.asset(imgUrl)),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            text1,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "want to trade with you using Garage sale trading",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text("2:23",
                    style: TextStyle(fontSize: 10, color: Colors.black38)),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                outlinebutton(text1: " Decline "),
                SizedBox(width: 5),
                ColorsButtons(
                  text1: " View ",
                  color1: AppColors.pinkContainer,
                  onCountSelected: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Inventory83()));
                  },
                ),
                SizedBox(width: 5),
                ColorsButtons(
                  text1: "Trade Now",
                  color1: AppColors.buttonGreen,
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
    );
  }
}
