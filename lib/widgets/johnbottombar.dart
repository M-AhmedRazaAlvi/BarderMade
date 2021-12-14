import 'package:bartermade/screens/Inventory/frame22.dart';
import 'package:bartermade/screens/Inventory/inven85.dart';
import 'package:bartermade/screens/chat/chats_30.dart';
import 'package:bartermade/widgets/date.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:dropdown_date_picker/dropdown_date_picker.dart';
import 'package:flutter/material.dart';

class JohnBottomBar extends StatefulWidget {
  final String text1;
  JohnBottomBar({
    Key key,
    this.text1,
  }) : super(key: key);

  @override
  State<JohnBottomBar> createState() => _JohnBottomBarState();
  static final now = DateTime.now();
  final dropdownDatePicker = DropdownDatePicker(
    dateFormat: DateFormat.dmy,
    firstDate: ValidDate(day: 1, month: 1, year: now.year - 100),
    lastDate: ValidDate(day: now.day, month: now.month, year: now.year),
    textStyle: TextStyle(fontWeight: FontWeight.bold),
    dropdownColor: AppColors.cotainerColor,
    dateHint: DateHint(
      day: ' day',
      month: 'month ',
      year: 'year ',
    ),
    ascending: false,
  );
}

class _JohnBottomBarState extends State<JohnBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      BottomNavigationBarItem(
          icon: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Image.asset("assets/images/Icon.png")),
          label: ''),
      BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Inventory85()),
              );
            },
            child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Image.asset("assets/images/Icon (1).png")),
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.pinkAppBar),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Decline",
                style: TextStyle(fontSize: 10, color: AppColors.pinkAppBar),
              )),
          label: ''),
      BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alertButtonwidget();
                  });
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: Color(0xffB0DA06),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  widget.text1,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                )),
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Chats30()));
            },
            child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child:
                    Icon(Icons.message_rounded, color: AppColors.pinkAppBar)),
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Container(
              child: Row(
            children: [
              Container(
                  padding: EdgeInsets.only(right: 8),
                  child: CircleAvatar(
                    radius: 18,
                    child: Image.asset(
                      "assets/images/Avatar1.png",
                      fit: BoxFit.cover,
                    ),
                  )),
              Text(
                "John Miller",
                style: TextStyle(fontSize: 10),
              )
            ],
          )),
          label: ''),
      BottomNavigationBarItem(
          icon: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DateWidgets();
                          });
                    },
                    child: Container(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        height: 30,
                        width: 120,
                        child: Text(
                          "Shedule Trade",
                          style: TextStyle(color: AppColors.pinkColor),
                        )),
                  ),
                ],
              )),
            ],
          ),
          label: ''),
    ]);
  }
}
