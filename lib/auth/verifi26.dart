import 'package:bartermade/auth/welcome23.dart';
import 'package:bartermade/utils/app_colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:flutter/material.dart';

class Verifi26 extends StatefulWidget {
  @override
  _Verifi26State createState() => _Verifi26State();
}

class _Verifi26State extends State<Verifi26> {
  double width, height;

  Widget _verificaionContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(50),
          topStart: Radius.circular(50),
        ),
        color: AppColors.cotainerColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
              child: Text(
                'Verification',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            //color: Colors.grey,
            margin: EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Center(
              child: VerificationCode(
                keyboardType: TextInputType.number,
                length: 4,
                onCompleted: (String value) {
                  setState(() {
                    //_code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    // _onEditing = value;
                  });
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  //color: Colors.grey,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend Code",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(251, 3, 99, 1),
                    ),
                    child: Text(
                      "Confirm",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //CustomTopBar(name: "assets/icons/createAcc.png"),
              Container(
                //padding: EdgeInsets.only(bottom: 20),
                height: MediaQuery.of(context).size.height * 0.33,
                width: MediaQuery.of(context).size.width,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(children: [
                      Positioned(
                          top: 90,
                          left: 60,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.pinkContainer,
                          )),
                      Positioned(
                          bottom: 20,
                          left: 80,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColors.pinkContainer,
                          )),
                      Positioned(
                          top: 40,
                          right: 60,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xffF8AECA),
                          )),
                      Container(
                        // margin: EdgeInsets.only(top: 130),
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          //color: Colors.grey,
                          image: DecorationImage(
                            image: AssetImage("assets/images/Polygon.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: Image.asset("assets/icons/allDone.png"),
                        ),
                      ),
                    ]),
                    Container(
                      // margin: EdgeInsets.only(top: 50),
                      child: Text(
                        'BARTERMADE',
                        style: TextStyle(
                          color: Color.fromRGBO(251, 3, 99, 1),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 5,
                child: ListView(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _verificaionContainer(context),
                    ],
                  ),
                ]),
              ),
            ]),
      ),
    );
  }
}
