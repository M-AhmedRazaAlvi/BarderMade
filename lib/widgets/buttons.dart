import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Buttons {
  static Widget textButton(BuildContext context,
      {String text, VoidCallback ontap}) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        height: 50,
        width: MediaQuery.of(context).size.width / 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.pinkColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: AppColors.textPink, fontSize: 15),
          ),
        ),
      ),
    );
  }

  static Widget googleButton(
    BuildContext context,
  ) {
    return Container(
      margin: EdgeInsets.all(05),
      height: 40,
      width: MediaQuery.of(context).size.width / 0.5,
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.lightBlue,
      ),
      child: Row(
        children: [
          Image.asset('assets/icons/google.png'),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Continue with google',
              style: TextStyle(color: AppColors.textWhite),
            ),
          ),
        ],
      ),
    );
  }

  static Widget facebookButton(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        margin: EdgeInsets.all(05),
        width: MediaQuery.of(context).size.width / 0.5,
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.darkBlue,
        ),
        child: Row(
          children: [
            Image.asset('assets/icons/facebook.png'),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                'Continue with facebook',
                style: TextStyle(color: AppColors.textWhite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorsButtons extends StatelessWidget {
  final VoidCallback onCountSelected;
  final color1;
  final String text1;
  const ColorsButtons({
    Key key,
    this.color1,
    this.text1,
    this.onCountSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onCountSelected(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        decoration: BoxDecoration(
            color: color1, borderRadius: BorderRadius.circular(20)),
        child: Text(text1,
            style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// ignore: camel_case_types
class outlinebutton extends StatelessWidget {
  final VoidCallback pressed;
  final String text1;
  const outlinebutton({
    Key key,
    this.text1,
    this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => pressed(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(20)),
        child: Text(text1,
            style: TextStyle(
                color: AppColors.pinkAppBar,
                fontSize: 10,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
