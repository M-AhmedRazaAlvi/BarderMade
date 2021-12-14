import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications46 extends StatefulWidget {
  const Notifications46({Key key}) : super(key: key);

  @override
  _Notifications46State createState() => _Notifications46State();
}

class _Notifications46State extends State<Notifications46> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkAppBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.pinkAppBar,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Notifications",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            Flexible(
              flex: 4,
              child: ListView.builder(
                itemBuilder: (context, inedx) {
                  return Container(
                    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: MediaQuery.of(context).size.height * .13,
                    decoration: BoxDecoration(
                        //color: Colors.grey,
                        border: Border(bottom: BorderSide(width: .4))),
                    child: Column(
                      children: [
                        Container(
                          // color: Colors.blue,
                          height: MediaQuery.of(context).size.height * .07,
                          width: MediaQuery.of(context).size.width * .9,
                          child: Row(
                            children: [
                              Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  child:
                                      Image.asset("assets/images/Avatar.png")),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            child: Text(
                                          "John Doe",
                                          style: TextStyle(fontSize: 16),
                                        )),
                                        Container(
                                            margin: EdgeInsets.only(left: 230),
                                            child: Text("2:23",
                                                style: TextStyle(
                                                    color: Colors.black38)))
                                      ],
                                    ),
                                    Container(
                                        child: Text(
                                      "want to trade with you",
                                      style: TextStyle(color: Colors.black38),
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: Row(children: [
                                        Text("Date:"),
                                        Text(" 23/3/2021",
                                            style: TextStyle(
                                                color: Colors.black38))
                                      ])),
                                  Row(children: [
                                    Text("Time: "),
                                    Text("7:00 PM",
                                        style: TextStyle(color: Colors.black38))
                                  ])
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.62,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    outlinebutton(text1: "Decline"),
                                    ColorsButtons(
                                        color1: AppColors.pinkContainer,
                                        text1: "  view  "),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .04,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              .09,
                                      decoration: BoxDecoration(
                                          color: AppColors.buttonGreen,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: TextButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Center(
                                                    child: Text(
                                                        "Your trade has been\n        scheduled!"),
                                                  ),
                                                  content: Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.06,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text("Date:"),
                                                              Text(
                                                                "  23/3/2021",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black54),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text("Time:"),
                                                              Text(
                                                                "  7:00 PM",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black54),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      )),
                                                  actions: [
                                                    // ignore: deprecated_member_use
                                                    FlatButton(
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 5),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .04,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .09,
                                                        decoration: BoxDecoration(
                                                            color: AppColors
                                                                .buttonGreen,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        // color: Colors.yellow,
                                                        child: Center(
                                                            child: Text("Ok",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        16))),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                    )
                                                  ],
                                                );
                                              });
                                        },
                                        child: Text("Accept",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold)),
                                      ),
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
                },
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
