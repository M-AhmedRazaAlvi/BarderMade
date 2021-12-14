import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
       backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back,),
        title: Text('abc'),
      );
  }
}