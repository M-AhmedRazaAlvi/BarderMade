import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {
  CustomListView({Key key}) : super(key: key);

  @override
  _CustomListViewState createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/girl.png'),
                  minRadius: 05,
                ),
                title: Text('John Doe'),
                subtitle: Row(
                  children: [
                    Text('2:33'),
                    Icon(Icons.group),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white),
                    ),
                    // Text('csdjkcnjkcnkcnaknk')
                  ],
                ),
              )
            ],
          );
        });
  }
}
