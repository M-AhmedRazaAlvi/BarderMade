import 'package:bartermade/screens/add_screen/leader_68.dart';
import 'package:bartermade/screens/notifications/categories.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GiftCard70 extends StatefulWidget {
  const GiftCard70({Key key}) : super(key: key);

  @override
  _GiftCard70State createState() => _GiftCard70State();
}

class _GiftCard70State extends State<GiftCard70> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.pinkAppBar,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "Gift Card",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Pick a card",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              //color: Colors.grey,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Leader68()),
                  );
                },
                child: Stack(
                  children: [
                    Positioned(
                      left: 50,
                      top: 50,
                      child: pickCard(text1: "1"),
                    ),
                    Positioned(
                      right: 50,
                      top: 50,
                      child: pickCard(text1: "2"),
                    ),
                    Positioned(
                      left: 115,
                      bottom: 40,
                      child: pickCard(text1: "3"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class pickCard extends StatelessWidget {
  final String text1;
  const pickCard({
    Key key,
    this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Categories()));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
            color: AppColors.pinkContainer,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Color(0xffF6CEE8), Color(0xffFD9ADB)],
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text1,
            style: TextStyle(color: AppColors.pinkAppBar, fontSize: 150),
          ),
        ),
      ),
    );
  }
}
