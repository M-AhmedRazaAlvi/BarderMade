import 'package:bartermade/screens/add_screen/leader_84.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Leader68 extends StatefulWidget {
  const Leader68({Key key}) : super(key: key);

  @override
  _Leader68State createState() => _Leader68State();
}

class _Leader68State extends State<Leader68> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkAppBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.pinkAppBar,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
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
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  color: Colors.white,
                  child: Text(
                    "Weekly",
                    style: TextStyle(color: AppColors.pinkAppBar),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Leader84()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 30, top: 10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      "Monthly",
                      style: TextStyle(color: Colors.white),
                    ),
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
                      imgUrl1: "assets/images/girl.png",
                      imgUrl2: "assets/images/Avatar1.png"),
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
                      text1: "5", imgUrl: "assets/images/Polygon 3.png"),
                  positionswidget(
                      text1: "6", imgUrl: "assets/images/Polygon 2.png"),
                  positionswidget(
                      text1: "7", imgUrl: "assets/images/Polygon 2.png"),
                  positionswidget(
                      text1: "8", imgUrl: "assets/images/Polygon 3.png"),
                  positionswidget(
                      text1: "9", imgUrl: "assets/images/Polygon 2.png"),
                  positionswidget(
                      text1: "10", imgUrl: "assets/images/Polygon 2.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class positionswidget extends StatelessWidget {
  final String text1;
  final imgUrl;
  const positionswidget({
    Key key,
    this.text1,
    this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black26))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            child: Row(
          children: [
            Image.asset("assets/images/Avatar1.png"),
            SizedBox(width: 10),
            Text("john Doe"),
          ],
        )),
        Row(
          children: [
            Text(text1),
            SizedBox(width: 10),
            Image.asset(imgUrl),
          ],
        ),
      ]),
    );
  }
}

// ignore: camel_case_types
class topwinner extends StatelessWidget {
  final imgUrl1;
  final imgUrl2;
  const topwinner({
    Key key,
    this.imgUrl1,
    this.imgUrl2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            color: Color(0xffFFE9F1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      ),
      Positioned(
        top: -40,
        left: -10,
        child: CircleAvatar(
          radius: 50,
          backgroundColor: AppColors.pinkContainer,
        ),
      ),
      Positioned(
        top: -30,
        left: 150,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.pinkAppBar,
        ),
      ),
      Positioned(
        top: 75,
        left: 30,
        child: CircleAvatar(
          radius: 12,
          backgroundColor: AppColors.pinkAppBar,
        ),
      ),
      Positioned(
        bottom: -20,
        left: 30,
        child: CircleAvatar(
          radius: 70,
          backgroundColor: Color(0xffFED0E2),
        ),
      ),
      Positioned(
        top: -40,
        right: -20,
        child: CircleAvatar(
          radius: 110,
          backgroundColor: Color(0xffFED0E2),
        ),
      ),
      Positioned(
        bottom: 20,
        right: 130,
        child: CircleAvatar(
          radius: 12,
          backgroundColor: AppColors.pinkAppBar,
        ),
      ),
      Positioned(
        top: -50,
        right: -25,
        child: CircleAvatar(
          radius: 110,
          backgroundColor: AppColors.pinkContainer,
        ),
      ),
      Positioned(
        bottom: 50,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Image.asset("assets/images/Polygon 2.png"),
                ),
                Stack(clipBehavior: Clip.none, children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF21AFA7), width: 4)),
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "assets/images/Avatar.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      bottom: -2,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0xff25F1D9),
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 6),
                        ),
                      )),
                ]),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Image.asset("assets/images/Vector.png"),
                ),
                Stack(clipBehavior: Clip.none, children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.yellow, width: 4)),
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      imgUrl1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      bottom: -6,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.yellow,
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 10),
                        ),
                      )),
                ]),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Image.asset("assets/images/Polygon 3.png"),
                ),
                Stack(clipBehavior: Clip.none, children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF21AFA7), width: 4)),
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      imgUrl2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      bottom: -2,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0xff25F1D9),
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 6),
                        ),
                      )),
                ]),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
