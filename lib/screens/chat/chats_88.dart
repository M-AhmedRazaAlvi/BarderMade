import 'package:bartermade/screens/add_screen/group89.dart';
import 'package:bartermade/screens/chat/chats_33.dart';
import 'package:bartermade/screens/chat/chats_86.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Chat88 extends StatefulWidget {
  @override
  _Chat88State createState() => _Chat88State();
}

class _Chat88State extends State<Chat88> {
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
                  .push(MaterialPageRoute(builder: (context) => Chats86()));
            },
            child: Icon(Icons.arrow_back)),
        title: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // CircleAvatar(
            //   child:
            // ),
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    child: Image.asset("assets/images/Ellipse 41.png")),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Group Name"),
                      Text("Message",
                          style:
                              TextStyle(fontSize: 14, color: Colors.white70)),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Text(
                  "Trade",
                  style: TextStyle(fontSize: 14),
                )),
          ]),
        ),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GroupName89()));
                          },
                          child: Text(
                            "Group Info",
                            style: TextStyle(
                                color: AppColors.pinkAppBar,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ]),
        ],
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
                    SizedBox(height: 40),
                    Messages1(),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 40),
                          child: Image.asset("assets/images/girl.png"),
                        ),
                        MessageJohn(
                          text1:
                              "It is a long established fact that a\nreader will be distracted by the\nreadable content of a page when\nlooking at its layout.",
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 70, bottom: 10),
                        child: Text(
                          "2:23",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: 45,
                          width: 45,
                          child: Image.asset("assets/images/Avatar.png",
                              fit: BoxFit.cover),
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
                        margin: EdgeInsets.only(left: 70),
                        child: Text(
                          "2:23",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Messages1(),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: 45,
                          width: 45,
                          child: Image.asset("assets/images/Avatar.png",
                              fit: BoxFit.cover),
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
                        margin: EdgeInsets.only(left: 70),
                        child: Text(
                          "2:23",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.only(top: 50),
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

class Messages1 extends StatelessWidget {
  const Messages1({
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  color: AppColors.textPink,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                children: [
                  Text(
                    "It is a long established fact that a reader\nwill be distracted by the readable\ncontent of a page when looking at its\nlayout. The point of using Lorem Ipsum is\nthat it has a more-or-less normal\ndistribution of letters, as opposed to\nusing 'Content here, content here',\nmaking it.",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              right: 30, bottom: 5, child: Icon(Icons.done_all, size: 15)),
        ]),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.only(right: 20),
            child: Text(
              "2:23",
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ),
      ],
    );
  }
}
