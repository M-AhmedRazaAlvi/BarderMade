import 'package:bartermade/auth/barter11.dart';
import 'package:bartermade/auth/barter60.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Barter61 extends StatefulWidget {
  const Barter61({Key key}) : super(key: key);

  @override
  _Barter61State createState() => _Barter61State();
}

class _Barter61State extends State<Barter61> {
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
              child: Image.asset("assets/images/Group 277.png"),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Trade With Anyone",
                style: TextStyle(
                    color: AppColors.pinkColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Search Find Trade",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 8, backgroundColor: AppColors.pinkColor),
                  SizedBox(width: 3),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                  SizedBox(width: 3),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BarterMade11()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Barter60()),
                        );
                      },
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
            ),
          ],
        ),
      ),
    );
  }
}
