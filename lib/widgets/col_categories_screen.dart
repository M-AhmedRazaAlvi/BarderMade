import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buttons_row.dart';

class CategoriesScreen {
  static Widget upperColumn() {
    return Flexible(
      flex: 02,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Categories',
          style: TextStyle(fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            children: [],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/jumper.png'),
                  Text('Clothes'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/vegan-shoes.png'),
                  Text('Shoes'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/watches.png'),
                  Text('Watches'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/mobile.png'),
                  Text('Mobile'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/cycle.png'),
                  Text('Cycle'),
                ],
              )
            ],
          ),
        ),
        Center(
          child: IconButton(
              icon: Icon(Icons.arrow_drop_down_sharp), onPressed: null),
        ),
        Divider(height: 0, color: Colors.black),
        ButtonsRow(),
      ]),
    );
  }
}
