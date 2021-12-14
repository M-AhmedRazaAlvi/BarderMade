import 'package:bartermade/utils/app_colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Chats71 extends StatefulWidget {
  const Chats71({Key key}) : super(key: key);

  @override
  _Chats71State createState() => _Chats71State();
}

class _Chats71State extends State<Chats71> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}

class FollowingWidget extends StatelessWidget {
  const FollowingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.065,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Image.asset("assets/images/girl.png")),
              Text(
                "Adam",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: AppColors.blueBtn,
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Following",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 5),
              Icon(Icons.close, size: 16, color: Colors.black38),
            ],
          ),
        ],
      ),
    );
  }
}

class FollowerWidget extends StatelessWidget {
  const FollowerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5, top: 10),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Image.asset("assets/images/girl.png")),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Adam",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.brightness_1, size: 10, color: Colors.green),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.blueBtn, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Follow",
                    style: TextStyle(
                        color: AppColors.blueBtn,
                        fontSize: 11,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 5),
              Icon(Icons.close, size: 16, color: Colors.black38),
            ],
          ),
        ],
      ),
    );
  }
}
