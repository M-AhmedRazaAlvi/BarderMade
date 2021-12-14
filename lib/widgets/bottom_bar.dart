import 'package:bartermade/auth/SignUpInfo.dart';
import 'package:bartermade/auth/signUp24.dart';
import 'package:bartermade/auth/welcome23.dart';
import 'package:bartermade/screens/add_screen/add_post58.dart';
import 'package:bartermade/screens/add_screen/leader_68.dart';

import 'package:bartermade/screens/chat/chats_30.dart';
import 'package:bartermade/screens/notifications/notifi_49.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/screens/notifications/categories.dart';
import 'package:bartermade/screens/notifications/watchlist48.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex = 0;
  final listWidgets = [
    WelcomePage(),
    SignUpInfo(),
    SignUp(),
    Categories(),
    Watchlist(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.pinkColor,
        selectedFontSize: 18,
        unselectedItemColor: AppColors.iconsColor,
        unselectedFontSize: 14,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Categories()));
                  },
                  child: Icon(Icons.home)),
              label: ''),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Leader68()));
                  },
                  child: Icon(Icons.bar_chart)),
              label: ''),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddPost58()));
                  },
                  child: Icon(Icons.add_circle)),
              label: ''),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chats30()));
                  },
                  child: Icon(Icons.message_rounded)),
              label: ''),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Notifi49()));
                  },
                  child: Icon(Icons.person)),
              label: ''),
        ]);
  }
}
