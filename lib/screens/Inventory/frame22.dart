import 'package:bartermade/utils/app_colors.dart';
import 'package:dropdown_date_picker/dropdown_date_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class alertButtonwidget extends StatelessWidget {
  const alertButtonwidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text("Your trade has been\n        scheduled!"),
      ),
      content: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Date:"),
                  Text("  23/3/2021", style: TextStyle(color: Colors.black54))
                ],
              ),
              Row(
                children: [
                  Text("Time:"),
                  Text("  7:00 PM", style: TextStyle(color: Colors.black54))
                ],
              ),
            ],
          )),
      actions: [
        // ignore: deprecated_member_use
        FlatButton(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  color: AppColors.buttonGreen,
                  borderRadius: BorderRadius.circular(20)),
              child: Text("Ok",
                  style: TextStyle(color: Colors.white, fontSize: 16))),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

class SheduleTradewidget extends StatefulWidget {
  SheduleTradewidget({
    Key key,
  }) : super(key: key);

  @override
  State<SheduleTradewidget> createState() => _SheduleTradewidgetState();
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

class _SheduleTradewidgetState extends State<SheduleTradewidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black12))),
        child: Center(
          child: Text(
            "Scheduled Trade",
            style: TextStyle(color: AppColors.pinkAppBar),
          ),
        ),
      ),
      content: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 10), child: Text("Time")),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text("e.g 10:00",
                        style: TextStyle(color: Colors.black26)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text("A.M"),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Date")),
              Container(
                child: widget.dropdownDatePicker,
              )
            ],
          )),
      actions: [
        // ignore: deprecated_member_use
        FlatButton(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  color: AppColors.buttonGreen,
                  borderRadius: BorderRadius.circular(5)),
              child: Text("Confirm", style: TextStyle(color: Colors.white))),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
