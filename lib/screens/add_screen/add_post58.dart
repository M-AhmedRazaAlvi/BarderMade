import 'package:bartermade/screens/add_screen/add_post36.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class AddPost58 extends StatefulWidget {
  const AddPost58({Key key}) : super(key: key);

  @override
  _AddPost58State createState() => _AddPost58State();
}

class _AddPost58State extends State<AddPost58> {
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
          child: Icon(Icons.arrow_back, size: 36),
        ),
        title: Text(
          "Add Post",
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                  width: MediaQuery.of(context).size.width * .9,
                  child: Text(
                    "Choose Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              // ignore: deprecated_member_use
              FlatButton(
                highlightColor: AppColors.pinkAppBar,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddPost36()));
                                    },
                                    child: buttonwidgets(text1: "Tablet")),
                                SizedBox(height: 2),
                                buttonwidgets(text1: "Smart Phones"),
                                SizedBox(height: 2),
                                buttonwidgets(text1: "Ipad"),
                                SizedBox(height: 2),
                                buttonwidgets(text1: "Assessories"),
                              ],
                            ),
                          ));
                },
                child: ChooseCategories(
                  icons1: Icons.phone_android_outlined,
                  text: "Mobiles",
                ),
              ),
              ChooseCategories(icons1: Icons.local_shipping, text: "Vehicel"),
              ChooseCategories(
                  icons1: Icons.desktop_mac,
                  text: "Electronics & Home Appliances"),
              ChooseCategories(
                  icons1: Icons.emoji_emotions_outlined, text: "Animals"),
              ChooseCategories(
                  icons1: Icons.shopping_bag_outlined,
                  text: "Fashion & Beauty"),
              ChooseCategories(
                  icons1: Icons.book_online, text: "Books, Sports & Hobbies"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

// ignore: camel_case_types
class buttonwidgets extends StatelessWidget {
  final String text1;
  const buttonwidgets({
    Key key,
    this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(border: Border.all(width: 1)),
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(left: 20, bottom: 10),
        child: Text(
          text1,
          style: TextStyle(color: AppColors.pinkAppBar),
        ));
  }
}

class ChooseCategories extends StatelessWidget {
  final String text;
  final icons1;
  const ChooseCategories({
    Key key,
    this.text,
    this.icons1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * 0.06,
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(
            children: [
              Icon(icons1, color: AppColors.pinkAppBar, size: 26),
              SizedBox(width: 10),
              Text(text, style: TextStyle(fontSize: 14)),
            ],
          )),
          Container(
            child: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
