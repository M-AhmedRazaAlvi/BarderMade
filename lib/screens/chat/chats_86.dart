import 'package:bartermade/screens/notifications/categories.dart';
import 'package:bartermade/screens/chat/chats_30.dart';
import 'package:bartermade/screens/chat/chats_88.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:bartermade/widgets/chat_icons.dart';
import 'package:bartermade/widgets/chat_numbers.dart';
import 'package:flutter/material.dart';

class Chats86 extends StatefulWidget {
  //const GroupScreen({ Key? key }) : super(key: key);

  @override
  _Chats86State createState() => _Chats86State();
}

class _Chats86State extends State<Chats86> {
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
            child: Icon(Icons.arrow_back)),
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  //color: Colors.blue,
                  margin: EdgeInsets.only(left: 30),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Stack(children: [
                        Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 4,
                            )),
                        Container(
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Chats30()));
                              },
                              child: Text('Personal',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))),
                        ),
                      ]),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Groups',
                            style: TextStyle(
                                color: AppColors.pinkAppBar, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),

                //////////////////////////////////
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'All Groups',
                            style: TextStyle(
                                color: AppColors.textGrey, fontSize: 20),
                          ),
                          IconButton(
                              icon: Icon(Icons.search, size: 25),
                              onPressed: null)
                        ],
                      ),
                    ),
                    Stack(clipBehavior: Clip.none, children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Chat88()));
                              },
                              child: ChatNumbers(
                                text1: "",
                                colors1: Colors.white,
                                text2: "Group Name",
                                text3: "Hello group members....",
                              ),
                            ),
                            ChatNumbers(
                              text1: "2",
                              colors1: Colors.red,
                              text2: "Group Name",
                              text3: "Hello group members....",
                            ),
                            ChatNumbers(
                              text1: "2",
                              colors1: Colors.red,
                              text2: "Group Name",
                              text3: "Hello group members....",
                            ),
                            ChatNumbers(
                              text1: "2",
                              colors1: Colors.red,
                              text2: "Group Name",
                              text3: "Hello group members....",
                            ),
                            ChatNumbers(
                              text1: "",
                              colors1: Colors.white,
                              text2: "Group Name",
                              text3: "Hello group members....",
                            ),
                            ChatIcons1(
                              icons1: Icons.done,
                              colors1: Colors.black38,
                              text1: "Group Name",
                              text2: "Hello group members....",
                              images: "assets/images/girl.png",
                            ),
                            ChatIcons1(
                              icons1: Icons.done_all,
                              colors1: Colors.green,
                              text1: "Group Name",
                              text2: "Hello group members....",
                              images: "assets/images/girl.png",
                            ),
                            ChatIcons1(
                              icons1: Icons.done_all,
                              colors1: Colors.green,
                              text1: "Group Name",
                              text2: "Hello group members....",
                              images: "assets/images/girl.png",
                            ),
                            ChatNumbers(
                              text1: "",
                              colors1: Colors.white,
                              text2: "Group Name",
                              text3: "Hello group members....",
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(children: [CustomBottomBar()]),
    );
  }
}
