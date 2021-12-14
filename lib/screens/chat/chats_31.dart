import 'package:bartermade/screens/chat/chats_33.dart';
import 'package:bartermade/screens/chat/chats_88.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Chats31 extends StatefulWidget {
  const Chats31({Key key}) : super(key: key);

  @override
  _Chats31State createState() => _Chats31State();
}

class _Chats31State extends State<Chats31> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkAppBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.pinkAppBar,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
        title: Container(
          width: MediaQuery.of(context).size.width * .8,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Image.asset("assets/images/Avatar.png")),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("John Doe"),
                      Text("Online",
                          style:
                              TextStyle(fontSize: 14, color: Colors.white70)),
                    ],
                  ),
                ),
              ],
            )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Text(
                  "Trade",
                  style: TextStyle(fontSize: 14),
                ))
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

class JohnChatsWidget extends StatelessWidget {
  const JohnChatsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(
            children: [
              SizedBox(height: 30),
              Messages1(),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 40),
                    child: CircleAvatar(backgroundColor: Colors.white),
                  ),
                  MessageJohn(
                    text1:
                        "It is a long established fact that a\nreader will be distracted by the\nreadable content of a page when\nlooking at its layout.",
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: CircleAvatar(
                      child: Image.asset("assets/images/Avatar.png",
                          fit: BoxFit.cover),
                    ),
                  ),
                  MessageJohn(
                    text1: "It is a long established fact that a\nreader will.",
                  )
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 70),
                  child: Text(
                    "2:23",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Messages1(),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 5),
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/Rectangle 81.png"),
                    Image.asset("assets/images/Rectangle 82.png"),
                    Image.asset("assets/images/Rectangle 83.png"),
                    Image.asset("assets/images/Rectangle 84.png"),
                    Image.asset("assets/images/Rectangle 85.png")
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.emoji_emotions_outlined),
                        SizedBox(width: 03),
                        Expanded(
                          flex: 03,
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'type your message',
                                  border: InputBorder.none)),
                        ),
                        GestureDetector(onTap: null, child: Icon(Icons.image)),
                        SizedBox(width: 20),
                        GestureDetector(onTap: null, child: Icon(Icons.send)),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
