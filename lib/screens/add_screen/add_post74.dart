import 'package:bartermade/screens/notifications/categories.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

import 'add_post36.dart';

class AddPost74 extends StatefulWidget {
  const AddPost74({Key key}) : super(key: key);

  @override
  _AddPost74State createState() => _AddPost74State();
}

class _AddPost74State extends State<AddPost74> {
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
                  child: Text("Trading Type")),
              Container(
                margin: EdgeInsets.only(top: 10, left: 25),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: PostButtons(text: "   Post   ")),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.pinkAppBar)),
                        child: Center(
                            child: Text("Garage Sale",
                                style:
                                    TextStyle(color: AppColors.pinkAppBar)))),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, left: 25),
                  alignment: Alignment.bottomLeft,
                  child: Text("Time")),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Row(children: [
                  PostButtons(text: "e.g 10:00"),
                  PostButtons(text: "A.M")
                ]),
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

class PostButtons extends StatelessWidget {
  final String text;
  const PostButtons({Key key, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        child: Center(child: Text(text, style: TextStyle(color: Colors.grey))));
  }
}
