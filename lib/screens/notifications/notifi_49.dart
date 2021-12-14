import 'package:bartermade/screens/Inventory/invent90.dart';
import 'package:bartermade/screens/notifications/categories.dart';
import 'package:bartermade/screens/chat/chats7172.dart';

import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:bartermade/widgets/johndoelist.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifi49 extends StatefulWidget {
  const Notifi49({Key key}) : super(key: key);

  @override
  _Notifi49State createState() => _Notifi49State();
}

class _Notifi49State extends State<Notifi49> {
  final List<Widget> myProducts = [
    Image.asset('assets/icons/mbl1.png'),
    Image.asset('assets/icons/mbl2.png'),
    Image.asset('assets/icons/ball.png'),
    Image.asset('assets/icons/cute.png'),
    Image.asset('assets/icons/colorfulBall.png'),
    Image.asset('assets/icons/mbl3.png'),
    Image.asset('assets/icons/bear.png'),
    Image.asset('assets/icons/Rectangle.png'),
    Image.asset('assets/icons/colorfulBall.png'),
  ];

  final List<Widget> myProducts1 = [
    Image.asset('assets/icons/mbl1.png'),
    Image.asset('assets/icons/mbl2.png'),
    Image.asset('assets/icons/ball.png'),
    Image.asset('assets/icons/cute.png'),
    Image.asset('assets/icons/colorfulBall.png'),
    Image.asset('assets/icons/mbl3.png'),
    Image.asset('assets/icons/bear.png'),
    Image.asset('assets/icons/Rectangle.png'),
    Image.asset('assets/icons/colorfulBall.png'),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            JohnStackwidget(),
            Container(
              margin: EdgeInsets.only(top: 10, left: 130),
              width: MediaQuery.of(context).size.width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "John Doe",
                    style: TextStyle(fontSize: 20),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Inventory90()));
                      },
                      child: Container(
                          child: Image.asset("assets/images/Ellipse 42.png")))
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 15,
                  ),
                  Text(
                    "London",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  //color: Colors.grey,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(right: 5, bottom: 10),
                                    child: Text(
                                      "Rating",
                                      style: TextStyle(fontSize: 12),
                                    )),
                                Row(
                                  children: [
                                    Text("4.4",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 16)
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Chats7172()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 10),
                                      child: Text(
                                        "Follower",
                                        style: TextStyle(fontSize: 12),
                                      )),
                                  Text("545",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Chats7172()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 10),
                                      child: Text("Following",
                                          style: TextStyle(fontSize: 12))),
                                  Text("34",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: 5),
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(right: 5, bottom: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom:
                                                BorderSide(color: Colors.red))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Active",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Text("23",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white))),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "Completed",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )),
                                  Text("101",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white))),
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          "Canceled",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )),
                                  Text("34",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            JohnDoeList(
                myProducts: myProducts,
                myProducts1: myProducts1,
                height: height,
                width: width),
            JohnDoeList(
                myProducts: myProducts,
                myProducts1: myProducts1,
                height: height,
                width: width),
            JohnDoeList(
                myProducts: myProducts,
                myProducts1: myProducts1,
                height: height,
                width: width),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class JohnStackwidget extends StatelessWidget {
  const JohnStackwidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/images/Rectangle 150.png",
          ),
          fit: BoxFit.cover,
        )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Categories()));
                },
                child: Icon(Icons.arrow_back, size: 40, color: Colors.white)),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                    child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45))),
                        padding: EdgeInsets.all(10),
                        // height: 40,
                        // width: 180,
                        child: Text(
                          "Edit profile picture",
                          style: TextStyle(
                              fontSize: 12, color: AppColors.pinkColor),
                        )),

                    // Container(
                    //     decoration: BoxDecoration(
                    //         border: Border(
                    //             bottom: BorderSide(color: Colors.black45))),
                    //     padding: EdgeInsets.all(10),
                    //     child: Text(
                    //       "Setting",
                    //       style: TextStyle(
                    //           fontSize: 12, color: AppColors.pinkColor),
                    //     )),
                    // Container(
                    //     decoration: BoxDecoration(
                    //         border: Border(
                    //             bottom: BorderSide(color: Colors.black45))),
                    //     padding: EdgeInsets.all(10),
                    //     child: Text(
                    //       "Logout",
                    //       style: TextStyle(
                    //           fontSize: 12, color: AppColors.pinkColor),
                    //     )),
                  ],
                )),
                PopupMenuItem(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black45))),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Edit Cover picture",
                        style:
                            TextStyle(fontSize: 12, color: AppColors.pinkColor),
                      )),
                ),
                PopupMenuItem(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black45))),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Settings",
                        style:
                            TextStyle(fontSize: 12, color: AppColors.pinkColor),
                      )),
                ),
                PopupMenuItem(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black45))),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Logout",
                        style:
                            TextStyle(fontSize: 12, color: AppColors.pinkColor),
                      )),
                ),
              ],
              child: Icon(Icons.more_vert, size: 30, color: Colors.white),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: -10,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        ),
      ),
      Positioned(
          bottom: -10,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Color(0xff8A6F57),
            child: Container(
              height: 70,
              width: 70,
              child: Image.asset(
                "assets/images/Avatar33.png",
                fit: BoxFit.cover,
              ),
            ),
          )),
      // Positioned(
      //     bottom: -20,
      //     right: 30,
      //   ),
    ]);
  }
}
