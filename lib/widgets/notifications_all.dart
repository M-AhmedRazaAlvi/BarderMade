import 'package:bartermade/screens/Inventory/frame22.dart';
import 'package:bartermade/screens/Inventory/invent65.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/buttons.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class johnDoewidget extends StatelessWidget {
  final String text11;
  final colors11;
  johnDoewidget({
    Key key,
    this.text11,
    this.colors11,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: MediaQuery.of(context).size.height * .09,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .4))),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset("assets/images/Avatar.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(fontSize: 16),
                          ),
                          Row(
                            children: [
                              Text(
                                "Follow request has been ",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black38),
                              ),
                              Text(
                                "  decline",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.red),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Text("2:23",
                    style: TextStyle(fontSize: 10, color: Colors.black38)),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ColorsButtons(color1: colors11, text1: text11)],
            ),
          )
        ],
      ),
    );
  }
}

class JohnDeo extends StatelessWidget {
  final String texts;
  const JohnDeo({
    Key key,
    this.texts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .4))),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .07,
            width: MediaQuery.of(context).size.width * .9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                  children: [
                    Image.asset("assets/images/Avatar.png"),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("John Doe", style: TextStyle(fontSize: 16)),
                          Text(
                            texts,
                            style:
                                TextStyle(fontSize: 10, color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
                Container(
                  child: Text("2:23",
                      style: TextStyle(fontSize: 10, color: Colors.black38)),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Date:"),
                              Text("Time: "),
                            ]),
                        SizedBox(width: 5),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("23/3/2021",
                                  style: TextStyle(color: Colors.black38)),
                              Text("7:00 PM",
                                  style: TextStyle(color: Colors.black38))
                            ])
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      outlinebutton(text1: "Decline"),
                      SizedBox(width: 5),
                      ColorsButtons(
                          color1: AppColors.pinkContainer,
                          text1: "  view  ",
                          onCountSelected: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Inventory65()));
                          }),
                      SizedBox(width: 5),
                      ColorsButtons(
                        color1: AppColors.buttonGreen,
                        text1: "Trade Now",
                        onCountSelected: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertButtonwidget();
                              });
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Bartermade extends StatelessWidget {
  const Bartermade({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * .09,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .4))),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: AppColors.pinkAppBar, shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "B",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bartermade",
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                            child: Row(
                          children: [
                            Text(
                              "Is your Parcel reached you safely?",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black38),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
                Text("2:23",
                    style: TextStyle(fontSize: 10, color: Colors.black38)),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                outlinebutton(
                  text1: "Complain",
                  pressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            title: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Complain",
                                    style:
                                        TextStyle(color: AppColors.pinkAppBar),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  padding: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextField(
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      hintText: "Write complain message...",
                                      hintStyle: TextStyle(
                                          fontSize: 14, color: Colors.black38),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              // ignore: deprecated_member_use
                              FlatButton(
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: AppColors.buttonGreen,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Text("Submit",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16))),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
                  },
                ),
                SizedBox(width: 5),
                outlinebutton(text1: "  No  "),
                SizedBox(width: 5),
                ColorsButtons(
                  color1: AppColors.buttonGreen,
                  text1: "    Yes    ",
                  onCountSelected: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            title: Stack(clipBehavior: Clip.none, children: [
                              Center(
                                  child: Text(
                                "Rate your Experience",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              Positioned(
                                right: -15,
                                top: -15,
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.grey[300],
                                    child: Icon(Icons.close,
                                        size: 15, color: Colors.black)),
                              ),
                            ]),
                            content: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star,
                                            size: 30,
                                            color: AppColors.pinkAppBar),
                                        Icon(Icons.star,
                                            size: 30,
                                            color: AppColors.pinkAppBar),
                                        Icon(Icons.star,
                                            size: 30,
                                            color: AppColors.pinkAppBar),
                                        Icon(Icons.star,
                                            size: 30,
                                            color: AppColors.pinkAppBar),
                                        Icon(Icons.star_outline,
                                            size: 30,
                                            color: AppColors.pinkAppBar)
                                      ],
                                    ),
                                    // ignore: deprecated_member_use
                                    FlatButton(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: EdgeInsets.only(top: 30),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color:
                                                        AppColors.pinkAppBar)),
                                            child: Text("Submit",
                                                style: TextStyle(
                                                    color: AppColors.pinkAppBar,
                                                    fontSize: 14))),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                )),
                            actions: [
                              // ignore: deprecated_member_use
                            ],
                          );
                        });
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
