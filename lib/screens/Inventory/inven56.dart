import 'package:bartermade/screens/Inventory/inven55.dart';
import 'package:bartermade/widgets/johnbottombar.dart';
import 'package:flutter/material.dart';

class Inventory56 extends StatefulWidget {
  const Inventory56({Key key}) : super(key: key);

  @override
  _Inventory56State createState() => _Inventory56State();
}

class _Inventory56State extends State<Inventory56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TeaCupWidgets(text1: "Inventory"),

            ////////////////222222222222222222222/////////////////////////////////
            Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 0.2475,
              color: Colors.white,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black26)),
                  child: Center(
                    child: Text(
                      "Drag items here\n           you  \nare interested in",
                      style: TextStyle(color: Colors.black26),
                    ),
                  ),
                ),
              ),
            ),
            ///////////////33333333333333333333333////////////////////////////////
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.005,
              child: Container(
                color: Color(0xffF9F9F9),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 0.2475,
              color: Colors.white,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black26)),
                  child: Center(
                    child: Text(
                      "Drag items here\n           you  \nare interested in",
                      style: TextStyle(color: Colors.black26),
                    ),
                  ),
                ),
              ),
            ),
            ///////////4444444444444444444444444/////////////////////////////////////////
            TeaCupWidgets(text1: "Inventory"),
          ]),
        ),
      ),
      bottomNavigationBar: JohnBottomBar(text1: "Confirm Trade"),
    );
  }
}