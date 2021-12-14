import 'package:bartermade/screens/chat/chats_71.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/johndoelist.dart';
import 'package:flutter/material.dart';

import '../chat/chats_72.dart';

class Notifi80 extends StatefulWidget {
  const Notifi80({Key key}) : super(key: key);

  @override
  _Notifi80State createState() => _Notifi80State();
}

class _Notifi80State extends State<Notifi80> {
  final List<Widget> myProducts = [
    Image.asset('assets/icons/mbl1.png'),
    Image.asset('assets/icons/mbl2.png'),
    Image.asset('assets/icons/ball.png'),
    Image.asset('assets/icons/cute.png'),
    Image.asset('assets/icons/toys.png'),
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
    Image.asset('assets/icons/toys.png'),
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
            Stack(clipBehavior: Clip.none, children: [
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
                    Icon(Icons.arrow_back, size: 40, color: Colors.white),
                    PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                            child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                height: 30,
                                width: 100,
                                child: Text(
                                  "Block User",
                                  style: TextStyle(color: AppColors.pinkColor),
                                )),
                          ],
                        )),
                      ],
                      child:
                          Icon(Icons.more_vert, size: 40, color: Colors.white),
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
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                ),
              ),
              Positioned(
                  bottom: -10,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xffDACD42),
                    child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset(
                        "assets/images/Avatar1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Positioned(
                  bottom: -20,
                  right: 30,
                  child: Image.asset("assets/images/Ellipse 42.png")),
            ]),
            //////////////////////////////////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "John Doe",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
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
            TextButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.blueBtn, width: 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Follow",
                  style: TextStyle(fontSize: 16, color: AppColors.blueBtn),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.25,
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
                                    child: Text("Rating")),
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
                                    builder: (context) => Chats71()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 10),
                                      child: Text("Follower")),
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
                                    builder: (context) => Chats72()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 10),
                                      child: Text("Following")),
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
                                      child: Text("Active"),
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
                            Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(right: 5, bottom: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.white))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Completed"),
                                    )),
                                Text("101",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(right: 5, bottom: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.white))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Canceled"),
                                    )),
                                Text("34",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
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
          ],
        ),
      ),
    );
  }
}
