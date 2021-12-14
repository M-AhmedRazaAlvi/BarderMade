import 'package:bartermade/screens/notifications/categories.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'leader_68.dart';

class Leader84 extends StatefulWidget {
  const Leader84({Key key}) : super(key: key);

  @override
  _Leader84State createState() => _Leader84State();
}

class _Leader84State extends State<Leader84> {
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
          child: Icon(Icons.arrow_back, size: 36),
        ),
        title: Text(
          "LeaderBoard",
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Leader68()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 30, top: 10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      "Weekly",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  color: Colors.white,
                  child: Text(
                    "Monthly",
                    style: TextStyle(color: AppColors.pinkAppBar),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  topwinner(
                      imgUrl1: "assets/images/Avatar1.png",
                      imgUrl2: "assets/images/girl.png"),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    padding: EdgeInsets.only(left: 30, right: 30),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xffFF5999),
                            Color(0xffFDCCDF),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your Position",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  positionswidget(
                      text1: "4", imgUrl: "assets/images/Polygon 2.png"),
                  positionswidget(
                      text1: "5", imgUrl: "assets/images/Polygon 2.png"),
                  positionswidget(
                      text1: "6", imgUrl: "assets/images/Polygon 2.png"),
                  positionswidget(
                      text1: "7", imgUrl: "assets/images/Polygon 3.png"),
                  positionswidget(
                      text1: "8", imgUrl: "assets/images/Polygon 3.png"),
                  positionswidget(
                      text1: "9", imgUrl: "assets/images/Polygon 2.png"),
                  positionswidget(
                      text1: "10", imgUrl: "assets/images/Polygon 2.png"),
                  positionswidget(
                      text1: "11", imgUrl: "assets/images/Polygon 3.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
