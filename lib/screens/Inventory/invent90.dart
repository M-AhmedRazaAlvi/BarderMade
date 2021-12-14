import 'package:bartermade/screens/add_screen/add_post58.dart';

import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class Inventory90 extends StatefulWidget {
  @override
  _Inventory90State createState() => _Inventory90State();
}

class _Inventory90State extends State<Inventory90> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Watchlist'),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddPost58()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Text(
                  "Add Inventory",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              )),
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 08, vertical: 05),
          child: ListView.builder(itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.black12))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 08),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/shoes.png'),
                            //Icon(Icons.more_vert),
                            // ignore: missing_return
                            PopupMenuButton(
                                itemBuilder: (context) => [
                                      PopupMenuItem(
                                        value: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Delete",
                                            style: TextStyle(
                                                color: AppColors.pinkAppBar,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ]),
                          ],
                        ),
                        Text(
                            'is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has\nbeen the industry\'s',
                            style: TextStyle(fontSize: 12)),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Tues 2:43', style: TextStyle(fontSize: 11)),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration:
                                    BoxDecoration(color: AppColors.buttonGreen),
                                child: Text(
                                  "Trade",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(height: 05, indent: 0.8),
              ],
            );
          })),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
