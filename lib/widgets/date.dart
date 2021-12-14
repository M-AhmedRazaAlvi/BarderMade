import 'package:bartermade/utils/app_colors.dart';
//import 'package:dropdown_date_picker/dropdown_date_picker.dart';
import 'package:flutter/material.dart';

class DateWidgets extends StatefulWidget {
  DateWidgets({Key key}) : super(key: key);

  @override
  _DateWidgetsState createState() => _DateWidgetsState();
}

class _DateWidgetsState extends State<DateWidgets> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Day';
    String dropdownValue1 = 'Month';
    String dropdownValue2 = 'Year';

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Container(
        // padding: EdgeInsets.only(bottom: 10),
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
          //height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(bottom: 5), child: Text("Time")),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(5)),
                child:
                    Text("e.g 10:00", style: TextStyle(color: Colors.black26)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(5)),
                child: Text("A.M"),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 8), child: Text("Date")),
          Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                      height: 20,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        menuMaxHeight: 400,
                        elevation: 0,
                        underline: Container(
                          color: Colors.white,
                        ),
                        icon: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.keyboard_arrow_down,
                              color: Colors.black45),
                        ),
                        iconSize: 18,
                        style: TextStyle(color: Colors.black45, fontSize: 14),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>[
                          'Day',
                          '1',
                          '2',
                          '3',
                          '4',
                          '5',
                          '6',
                          '7',
                          '8',
                          '9',
                          '10',
                          '11',
                          '12',
                          '13',
                          '14',
                          '15',
                          '16',
                          '17',
                          '18',
                          '19',
                          '20',
                          '21',
                          '22',
                          '23',
                          '24',
                          '25',
                          '26',
                          '27',
                          '28',
                          '29',
                          '30',
                          "31"
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                      )),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                      height: 20,
                      child: DropdownButton<String>(
                        value: dropdownValue1,
                        menuMaxHeight: 400,
                        elevation: 0,
                        underline: Container(color: Colors.white),
                        icon: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.keyboard_arrow_down,
                              color: Colors.black45),
                        ),
                        iconSize: 18,
                        style: TextStyle(color: Colors.black45, fontSize: 14),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue1 = newValue;
                          });
                        },
                        items: <String>[
                          'Month',
                          'Jan',
                          'Feb',
                          'March',
                          'April',
                          'May',
                          'Jun',
                          'July',
                          'Aug',
                          'Sep',
                          'Oct',
                          'Nov',
                          'Dec',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                      )),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                      height: 20,
                      child: DropdownButton<String>(
                        value: dropdownValue2,
                        menuMaxHeight: 400,
                        elevation: 0,
                        underline: Container(color: Colors.white),
                        icon: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.keyboard_arrow_down,
                              color: Colors.black45),
                        ),
                        iconSize: 18,
                        style: TextStyle(color: Colors.black45, fontSize: 14),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue2 = newValue;
                          });
                        },
                        items: <String>[
                          'Year',
                          '2021',
                          '2020',
                          '2019',
                          '2018',
                          '2017',
                          '2016',
                          '2015',
                          '2014',
                          '2013',
                          '2012',
                          '2011',
                          '2010',
                          '2009',
                          '2008',
                          '2007',
                          '2006',
                          '2005',
                          '2004',
                          '2003',
                          '2002',
                          '2001',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                      )),
                ),
              ],
            ),
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
