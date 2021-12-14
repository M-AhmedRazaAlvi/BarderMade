import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Chats72 extends StatefulWidget {
  const Chats72({Key key}) : super(key: key);

  @override
  _Chats72State createState() => _Chats72State();
}

class _Chats72State extends State<Chats72> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkAppBar,
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}

class FollowingWidgets extends StatelessWidget {
  final Color colors1;
  const FollowingWidgets({
    Key key,
    this.colors1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5, right: 5),
                  child: Image.asset("assets/images/girl.png")),
              Container(
                child: Row(
                  children: [
                    Text("Adam",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        child:
                            Icon(Icons.brightness_1, size: 10, color: colors1)),
                  ],
                ),
              ),
            ],
          )),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Following",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 11,
                        fontWeight: FontWeight.bold)),
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text("Unfollow")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
