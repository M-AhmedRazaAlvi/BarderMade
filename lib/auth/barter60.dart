import 'package:bartermade/auth/barter61.dart';
import 'package:bartermade/auth/barter62.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Barter60 extends StatefulWidget {
  const Barter60({Key key}) : super(key: key);

  @override
  _Barter60State createState() => _Barter60State();
}

class _Barter60State extends State<Barter60> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 40, bottom: 10),
                height: 140,
                width: 140,
                child: Image.asset(
                  "assets/images/Group 1.png",
                  color: AppColors.pinkColor,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "BARTERMADE",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.pinkColor),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(width: 1, color: Colors.black26))),
              child: Image.asset("assets/images/undraw1.png"),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10, top: 20),
              child: Text("Easy To Use",
                  style: TextStyle(
                      color: AppColors.pinkColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            Text(
                "Bartering allow individuals to\nget what they need with what\n          they already own"),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                  SizedBox(width: 3),
                  CircleAvatar(radius: 8, backgroundColor: AppColors.pinkColor),
                  SizedBox(width: 3),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Barter61()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.arrow_back),
                          SizedBox(width: 5),
                          Text("Back"),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Barter62()),
                      );
                    },
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: AppColors.pinkAppBar,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward, color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
