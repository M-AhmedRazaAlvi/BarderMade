import 'package:bartermade/screens/chat/chats_88.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Chats33 extends StatefulWidget {
  const Chats33({Key key}) : super(key: key);

  @override
  _Chats33State createState() => _Chats33State();
}

class _Chats33State extends State<Chats33> {
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
          child: Row(children: [
            Image.asset("assets/images/Avatar.png"),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("John Doe"),
                  Text("Online",
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 70),
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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
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
                        ),
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
                          text1:
                              "It is a long established fact that a\nreader will.",
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 60),
                        child: Text(
                          "2:23",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Messages1(),
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
                          text1:
                              "It is a long established fact that a\nreader will.",
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
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
                              GestureDetector(
                                  onTap: null, child: Icon(Icons.image)),
                              SizedBox(width: 10),
                              GestureDetector(
                                  onTap: null, child: Icon(Icons.send)),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessageJohn extends StatelessWidget {
  final String text1;
  const MessageJohn({
    Key key,
    this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Text(text1),
    );
  }
}
