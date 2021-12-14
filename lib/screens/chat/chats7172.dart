import 'package:bartermade/screens/chat/chats_71.dart';
import 'package:bartermade/screens/chat/chats_72.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../notifications/notifi_49.dart';

class Chats7172 extends StatefulWidget {
  const Chats7172({Key key}) : super(key: key);

  @override
  _Chats7172State createState() => _Chats7172State();
}

class _Chats7172State extends State<Chats7172> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Notifi49()));
              },
              child: Icon(Icons.arrow_back)),
          title: Text(
            "John Doe ",
          ),
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: AppColors.pinkAppBar,
          flexibleSpace: Container(
              margin: EdgeInsets.only(top: 110),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)))),
          bottom: TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              tabs: [
                Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text("Follower",
                        style: TextStyle(color: Colors.black))),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Following",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                    child: Text(
                      "New",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        FollowerWidget(),
                        FollowerWidget(),
                        FollowerWidget(),
                        Container(
                          alignment: Alignment.topLeft,
                          margin:
                              EdgeInsets.only(top: 10, left: 20, bottom: 10),
                          child: Text(
                            "All",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        FollowingWidget(),
                        FollowerWidget(),
                        FollowerWidget(),
                        FollowerWidget(),
                        FollowingWidget(),
                        FollowerWidget(),
                        FollowerWidget(),
                        FollowerWidget(),
                        FollowingWidget(),
                        FollowerWidget(),
                        FollowerWidget(),
                        FollowerWidget(),
                        FollowingWidget(),
                        FollowerWidget(),
                        FollowerWidget(),
                        FollowerWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////////////////
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 30, top: 20, bottom: 10),
                    child: Text(
                      "All",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  FollowingWidgets(colors1: Colors.green),
                  FollowingWidgets(colors1: Colors.green),
                  FollowingWidgets(colors1: Colors.white),
                  FollowingWidgets(colors1: Colors.green),
                  FollowingWidgets(colors1: Colors.white),
                  FollowingWidgets(colors1: Colors.green),
                  FollowingWidgets(colors1: Colors.green),
                  FollowingWidgets(colors1: Colors.white),
                  FollowingWidgets(colors1: Colors.green),
                  FollowingWidgets(colors1: Colors.white),
                  FollowingWidgets(colors1: Colors.green),
                  FollowingWidgets(colors1: Colors.green),
                  FollowingWidgets(colors1: Colors.green),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }
}
