import 'package:bartermade/auth/welcome23.dart';
import 'package:bartermade/screens/notifications/Setting41.dart';
import 'package:bartermade/screens/add_screen/giftcard70.dart';

import 'package:bartermade/screens/notifications/notifi_49.dart';
import 'package:bartermade/screens/notifications/notification64.dart';
import 'package:bartermade/screens/notifications/search_filter.dart';

import 'package:bartermade/screens/notifications/watchlist48.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:bartermade/widgets/col_categories_screen.dart';
import 'package:bartermade/widgets/items_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle67.png"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * .4,
                  //color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * .2,
                          child: Image.asset("assets/images/girl.png",
                              fit: BoxFit.contain)),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "John Doe",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Icon(Icons.keyboard_arrow_down, color: Colors.white)
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Edit your profile',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Image.asset(
                                  "assets/images/ic_mode_edit_24px.png",
                                  color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: AppColors.pinkAppBar,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Notifi49()));
              },
              child: ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: Colors.black54,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Profile',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: AppColors.pinkAppBar,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Settings41()));
              },
              child: ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.black54,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Setting',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: AppColors.pinkAppBar,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GiftCard70()));
              },
              child: ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.wallet_giftcard,
                      color: Colors.black54,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Gift',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: AppColors.pinkAppBar,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Watchlist()));
              },
              child: ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.black54,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Watchlist',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: AppColors.pinkAppBar,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WelcomePage()));
              },
              child: ListTile(
                title: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.black54),
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('logout',
                            style: TextStyle(
                                fontSize: 16, color: Colors.black54))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
              color: Colors.red,
              icon: ImageIcon(AssetImage("assets/images/Iconss.png")),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        title: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SearchFilter()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.05,
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEDEDED)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(fontSize: 12, color: Colors.black26),
                ),
                Icon(Icons.search, color: Colors.black26, size: 20),
              ],
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Notifications64()));
            },
            child: Stack(clipBehavior: Clip.none, children: [
              Positioned(
                  right: 25,
                  top: 10,
                  child: CircleAvatar(radius: 4, backgroundColor: Colors.red)),
              Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 10),
                  child: Icon(Icons.notifications_outlined,
                      color: Color(0xffD5BBC9), size: 30)),
            ]),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoriesScreen.upperColumn(),
              Flexible(
                flex: 04,
                child: CustomlistView(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
