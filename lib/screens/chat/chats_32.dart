import 'package:bartermade/screens/chat/chats_31.dart';

import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Chats32 extends StatefulWidget {
  const Chats32({Key key}) : super(key: key);

  @override
  _Chats32State createState() => _Chats32State();
}

class _Chats32State extends State<Chats32> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkAppBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.pinkAppBar,
        leading: Icon(Icons.arrow_back),
        title: Container(
          width: MediaQuery.of(context).size.width * .8,
          child: Row(children: [
            Image.asset("assets/images/Avatar.png"),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("John Doe"),
                  Text("Online",
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                ],
              ),
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: JohnChatsWidget(),
        ),
      ),
    );
  }
}
