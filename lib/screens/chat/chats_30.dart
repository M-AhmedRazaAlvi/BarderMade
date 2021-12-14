import 'package:bartermade/screens/chat/chats_33.dart';
import 'package:bartermade/screens/chat/chats_86.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:bartermade/widgets/chat_icons.dart';

import 'package:bartermade/widgets/chat_numbers.dart';

import 'package:flutter/material.dart';

class Chats30 extends StatefulWidget {
  @override
  _Chats30State createState() => _Chats30State();
}

class _Chats30State extends State<Chats30> {
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
                      Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('Personal',
                              style: TextStyle(
                                  color: AppColors.pinkAppBar, fontSize: 16))),
                      Stack(children: [
                        Positioned(
                            right: 5,
                            top: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 3,
                            )),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Chats86()));
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Text('Groups',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),

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
                        children: [
                          Text('Recent Chats',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 20)),
                          IconButton(
                              icon: Icon(Icons.search, size: 25),
                              onPressed: null)
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Chats33()));
                                  },
                                  child: ChatNumbers(
                                      text1: "",
                                      colors1: Colors.white,
                                      text2: "John Doe",
                                      text3: "Hi lets chat"),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xffF26767),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Block",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10)),
                                      Icon(Icons.person_add_alt_outlined,
                                          size: 16, color: Colors.white)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          ChatNumbers(
                              text1: "2",
                              colors1: AppColors.pinkAppBar,
                              text2: "John Doe",
                              text3: "Hi let's chat"),
                          ChatNumbers(
                              text1: "2",
                              colors1: AppColors.pinkAppBar,
                              text2: "John Doe",
                              text3: "Hi let's chat"),
                          ChatNumbers(
                              text1: "2",
                              colors1: AppColors.pinkAppBar,
                              text2: "John Doe",
                              text3: "Hi let's chat"),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              padding: EdgeInsets.only(top: 10),
                              child: Text("All Chats",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black54))),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Chats33()));
                            },
                            child: ChatIcons1(
                                images: "assets/images/image1.png",
                                text1: "John Doe",
                                text2: "Hi let's chat",
                                icons1: Icons.done,
                                colors1: Colors.black54),
                          ),
                          ChatIcons1(
                              images: "assets/images/girl.png",
                              text1: "John Doe",
                              text2: "Hi let's chat",
                              icons1: Icons.done_all,
                              colors1: Colors.green),
                          ChatIcons1(
                              images: "assets/images/girl.png",
                              text1: "John Doe",
                              text2: "Hi let's chat",
                              icons1: Icons.done_all,
                              colors1: Colors.green),
                          ChatNumbers(
                              text1: "",
                              colors1: Colors.white,
                              text2: "John Doe",
                              text3: "Hi let's chat"),
                          ChatNumbers(
                              text1: "",
                              colors1: Colors.white,
                              text2: "John Doe",
                              text3: "Hi let's chat"),
                          ChatNumbers(
                              text1: "",
                              colors1: Colors.white,
                              text2: "John Doe",
                              text3: "Hi let's chat"),
                        ],
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
