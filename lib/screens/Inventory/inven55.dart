import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/johnbottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Inventory55 extends StatefulWidget {
  const Inventory55({Key key}) : super(key: key);

  @override
  _Inventory55State createState() => _Inventory55State();
}

class _Inventory55State extends State<Inventory55> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TeaCupWidgets(text1: "Inventory"),

            ////////////////222222222222222222222/////////////////////////////////
            BuyWidgets(),
            ///////////////33333333333333333333333////////////////////////////////
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.005,
              child: Container(
                color: Color(0xffF9F9F9),
              ),
            ),
            BuyWidgets(),
            ///////////4444444444444444444444444/////////////////////////////////////////
            TeaCupWidgets(text1: "Inventory"),
          ]),
        ),
      ),
      bottomNavigationBar: JohnBottomBar(text1: "Confirm Trade"),
    );
  }
}

class BuyWidgets extends StatelessWidget {
  const BuyWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 0.2475,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(clipBehavior: Clip.none, children: [
                  Image.asset("assets/images/Rectangle 170.png"),
                  Positioned(
                      top: -5,
                      right: -5,
                      child: CircleAvatar(
                          backgroundColor: Colors.grey[400],
                          radius: 6,
                          child:
                              Icon(Icons.close, color: Colors.black, size: 12)))
                ]),
                Stack(clipBehavior: Clip.none, children: [
                  Image.asset("assets/images/Rectangle 171.png"),
                  Positioned(
                      top: -5,
                      right: -5,
                      child: CircleAvatar(
                          backgroundColor: Colors.grey[400],
                          radius: 6,
                          child:
                              Icon(Icons.close, color: Colors.black, size: 12)))
                ]),
                Stack(clipBehavior: Clip.none, children: [
                  Image.asset("assets/images/Rectangle 172.png"),
                  Positioned(
                      top: -5,
                      right: -5,
                      child: CircleAvatar(
                          backgroundColor: Colors.grey[400],
                          radius: 6,
                          child:
                              Icon(Icons.close, color: Colors.black, size: 12)))
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TeaCupWidgets extends StatelessWidget {
  final String text1;
  const TeaCupWidgets({
    Key key,
    this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      color: Color(0xffDEDEDE),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
                color: AppColors.pinkAppBar,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Center(
                child: Text(
              text1,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.17,
              //color: Colors.white,
              child: Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.17,
                      child: Image.asset(
                        "assets/images/Rectangle 135.png",
                        fit: BoxFit.cover,
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 5),
                      child: Text("Tea Cup")),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.17,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        "assets/images/Rectangle 136.png",
                        fit: BoxFit.cover,
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 5),
                      child: Text("Tea Cup")),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.17,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        "assets/images/Rectangle 137.png",
                        fit: BoxFit.cover,
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 5),
                      child: Text("Tea Cup")),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width * 0.17,
                      child: Image.asset(
                        "assets/images/Rectangle 135.png",
                        fit: BoxFit.cover,
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
