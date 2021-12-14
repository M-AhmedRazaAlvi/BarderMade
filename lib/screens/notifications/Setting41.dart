import 'package:bartermade/auth/welcome23.dart';
import 'package:bartermade/screens/notifications/categories.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';

class Settings41 extends StatefulWidget {
  @override
  _Settings41State createState() => _Settings41State();
}

class _Settings41State extends State<Settings41> {
  bool isChecked = false;
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
            child: Icon(Icons.arrow_back, size: 30)),
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Column(
            children: [
              Container(
                //color: Colors.grey,
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width * .9,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                            child: CircleAvatar(
                              child: Image.asset("assets/images/girl.png"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    child: Text(
                                  "John Doe",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * .76,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Personal Info",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 11),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: Colors.black54,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.language,
                                    color: AppColors.pinkAppBar),
                                Text("Language"),
                                Text("English",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_right,
                                    color: Colors.black54)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.notifications_none,
                                    color: AppColors.pinkAppBar),
                                Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Notifications"))
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            height: MediaQuery.of(context).size.height * .04,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: CustomSwitchButton(
                                backgroundColor: AppColors.pinkAppBar,
                                checkedColor: Colors.white,
                                animationDuration: Duration(milliseconds: 200),
                                unCheckedColor: Colors.grey,
                                checked: isChecked,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                              child: Icon(Icons.lock_open_outlined,
                                  color: AppColors.pinkAppBar)),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Change Password")),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                              child: Icon(Icons.insert_drive_file_outlined,
                                  color: AppColors.pinkAppBar)),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Term and Conditions")),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WelcomePage()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(Icons.logout_outlined,
                                    color: AppColors.pinkAppBar)),
                            Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text("Sing out")),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
