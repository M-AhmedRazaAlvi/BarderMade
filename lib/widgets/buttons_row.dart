import 'package:bartermade/screens/add_screen/add_post58.dart';
import 'package:bartermade/screens/add_screen/garage_75.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsRow extends StatefulWidget {
  ButtonsRow({Key key}) : super(key: key);

  @override
  _ButtonsRowState createState() => _ButtonsRowState();
}

class _ButtonsRowState extends State<ButtonsRow> {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.065,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddPost58()));
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColors.pinkColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '  Add Post  ',
                        style: TextStyle(
                            color: AppColors.textWhite,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.textWhite,
                        size: 18,
                      ),
                    ],
                  )),
            ),
            SizedBox(width: 5),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GarageSale75()));
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColors.pinkColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Garage Sale',
                        style: TextStyle(
                            color: AppColors.textWhite,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: AppColors.textWhite,
                        size: 18,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
