import 'package:bartermade/screens/add_screen/add_post74.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../notifications/categories.dart';

class AddPost36 extends StatefulWidget {
  const AddPost36({Key key}) : super(key: key);

  @override
  _AddPost36State createState() => _AddPost36State();
}

class _AddPost36State extends State<AddPost36> {
  final List<Widget> myProducts = [
    Image.asset('assets/icons/mbl1.png'),
    Image.asset('assets/icons/mbl2.png'),
    Image.asset('assets/icons/ball.png'),
  ];

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
            child: Icon(Icons.arrow_back_outlined)),
        title: Text(
          "Add Post",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 25),
                alignment: Alignment.bottomLeft,
                child: Text("Trading Type"),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 25),
                child: Row(
                  children: [
                    AddButtons(
                        text1: "Post",
                        color1: AppColors.pinkAppBar,
                        color2: AppColors.pinkAppBar),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddPost74()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: Text(
                            "Garage Sale",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              UploadPhotos(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class UploadPhotos extends StatelessWidget {
  const UploadPhotos({
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.grey,
        margin: EdgeInsets.only(top: 10),
        // height: MediaQuery.of(context).size.height * 0.75,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topLeft,
              child: Text("Upload upto 9 Photos"),
            ),
            Container(
              //color: Colors.grey,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(vertical: 5),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(clipBehavior: Clip.none, children: [
                    Container(
                        height: 90,
                        width: 90,
                        child: Image.asset("assets/images/Rectangle 95.png",
                            fit: BoxFit.cover)),
                    Positioned(right: -10, top: -15, child: Icon(Icons.close))
                  ]),
                  Stack(clipBehavior: Clip.none, children: [
                    Container(
                        height: 90,
                        width: 90,
                        child: Image.asset("assets/images/Rectangle 144.png",
                            fit: BoxFit.cover)),
                    Positioned(right: -10, top: -15, child: Icon(Icons.close))
                  ]),
                  Stack(clipBehavior: Clip.none, children: [
                    Container(
                        height: 90,
                        width: 90,
                        child: Image.asset("assets/images/Rectangle 145.png",
                            fit: BoxFit.cover)),
                    Positioned(right: 0, top: -15, child: Icon(Icons.close))
                  ]),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black12,
                    child:
                        Icon(Icons.add_outlined, color: Colors.black, size: 20),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topLeft,
              child: Text("Title"),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
                minLines: 1,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ))),
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topLeft,
              child: Text("Discription"),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
                minLines: 1,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ))),
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              alignment: Alignment.topLeft,
              child: Text("Condition"),
            ),
            Row(
              children: [
                AddButtons(
                    text1: "   Old   ",
                    color1: Colors.grey,
                    color2: Colors.grey),
                SizedBox(width: 5),
                AddButtons(
                    text1: "   New   ",
                    color1: AppColors.pinkAppBar,
                    color2: AppColors.pinkAppBar),
                SizedBox(width: 5),
                AddButtons(
                    text1: "Rate /10",
                    color1: Colors.grey,
                    color2: Colors.grey),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              alignment: Alignment.topLeft,
              child: Text("Tags"),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TagsButtons(
                          text: "Camera",
                          color3: Colors.grey,
                          color4: Colors.grey),
                      TagsButtons(
                          text: "Mobile",
                          color3: AppColors.pinkAppBar,
                          color4: AppColors.pinkAppBar),
                      TagsButtons(
                          text: " Shirt ",
                          color3: Colors.grey,
                          color4: Colors.grey),
                      TagsButtons(
                          text: "Camera",
                          color3: Colors.grey,
                          color4: Colors.grey),
                      TagsButtons(
                          text: "Camera",
                          color3: Colors.grey,
                          color4: Colors.grey),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TagsButtons(
                          text: "Camera",
                          color3: Colors.grey,
                          color4: Colors.grey),
                      TagsButtons(
                          text: " shirt ",
                          color3: Colors.grey,
                          color4: Colors.grey),
                      TagsButtons(
                          text: "Camera",
                          color3: Colors.grey,
                          color4: Colors.grey),
                      TagsButtons(
                          text: "Cloths",
                          color3: AppColors.pinkAppBar,
                          color4: AppColors.pinkAppBar),
                      TagsButtons(
                          text: "Camera",
                          color3: Colors.grey,
                          color4: Colors.grey),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TagsButtons(
                          text: "Electronics",
                          color3: AppColors.pinkAppBar,
                          color4: AppColors.pinkAppBar),
                      TagsButtons(
                          text: " shirt ",
                          color3: Colors.grey,
                          color4: Colors.grey),
                      TagsButtons(
                          text: "Camera",
                          color3: Colors.grey,
                          color4: Colors.grey),
                      TagsButtons(
                          text: " Shirt ",
                          color3: AppColors.pinkAppBar,
                          color4: AppColors.pinkAppBar),
                      TagsButtons(
                          text: "  All  ",
                          color3: Colors.grey,
                          color4: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Center(
                          child: Text(
                            "Sucessfully published",
                            style: TextStyle(color: AppColors.pinkAppBar),
                          ),
                        ),
                        actions: [
                          // ignore: deprecated_member_use
                          FlatButton(
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                decoration: BoxDecoration(
                                    color: AppColors.buttonGreen,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text("Ok",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16))),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Container(
                margin: EdgeInsets.only(top: 15),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: AppColors.buttonGreen,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                    child: Text(
                  "Publish",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ));
  }
}

class TagsButtons extends StatelessWidget {
  final String text;
  final color3;
  final color4;
  const TagsButtons({
    Key key,
    this.text,
    this.color3,
    this.color4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color3)),
      child: Text(
        text,
        style: TextStyle(color: color4),
      ),
    );
  }
}

class AddButtons extends StatelessWidget {
  final String text1;
  final color1;
  final color2;
  const AddButtons({
    Key key,
    this.text1,
    this.color1,
    this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color1)),
      child: Text(
        text1,
        style: TextStyle(color: color2),
      ),
    );
  }
}
