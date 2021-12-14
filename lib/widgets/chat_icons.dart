import 'package:flutter/material.dart';

class ChatIcons1 extends StatelessWidget {
  final icons1;
  final Color colors1;
  final String text1;
  final String text2;
  final images;
  const ChatIcons1({
    this.icons1,
    this.colors1,
    this.text1,
    this.text2,
    this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .3))),
      width: MediaQuery.of(context).size.width * .85,
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 30,
                    width: 30,
                    child: Image.asset(images)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1),
                    Text(text2,
                        style: TextStyle(color: Colors.black38, fontSize: 12)),
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(child: Icon(icons1, size: 18, color: colors1)),
              Text("2:23",
                  style: TextStyle(color: Colors.black38, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
