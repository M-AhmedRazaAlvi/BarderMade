import 'package:bartermade/screens/Inventory/inven55.dart';
import 'package:bartermade/widgets/johnbottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import

class Inventory83 extends StatefulWidget {
  const Inventory83({Key key}) : super(key: key);
  @override
  _Inventory83State createState() => _Inventory83State();
}

class _Inventory83State extends State<Inventory83> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
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
