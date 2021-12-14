import 'package:flutter/material.dart';

class ColorDate extends StatefulWidget {
  const ColorDate({Key key}) : super(key: key);

  @override
  _ColorDateState createState() => _ColorDateState();
}

class _ColorDateState extends State<ColorDate> {
  String dropdownValue = 'Day';
  String dropdownValue1 = 'Month';
  String dropdownValue2 = 'Year';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 90,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: DropdownButton<String>(
                value: dropdownValue,
                menuMaxHeight: 500,
                elevation: 0,
                underline: Container(
                  color: Colors.white,
                ),
                icon: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.keyboard_arrow_down, color: Colors.black45),
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
              ),
            )),
        Container(
            width: 90,
            height: 35,
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: DropdownButton<String>(
                value: dropdownValue1,
                menuMaxHeight: 400,
                elevation: 0,
                underline: Container(color: Colors.white),
                icon: Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Icon(Icons.keyboard_arrow_down, color: Colors.black45),
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
              ),
            )),
        Container(
            width: 90,
            height: 35,
            //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: DropdownButton<String>(
                value: dropdownValue2,
                // alignment: Alignment.center,
                menuMaxHeight: 400,
                elevation: 0,
                underline: Container(color: Colors.white),
                icon: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.keyboard_arrow_down, color: Colors.black45),
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
                  '2000',
                  '1999',
                  '1998',
                  '1997',
                  '1996',
                  '1995',
                  '1994',
                  '1993',
                  '1992',
                  '1991',
                  '1990',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
              ),
            )),
      ],
    );
  }
}
