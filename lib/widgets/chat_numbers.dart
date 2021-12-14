import 'package:flutter/material.dart';

class ChatNumbers extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color colors1;
  const ChatNumbers({
    this.text1,
    this.colors1,
    this.text2,
    this.text3,
  });

  @override
  State<ChatNumbers> createState() => _ChatNumbersState();
}

class _ChatNumbersState extends State<ChatNumbers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .3))),
      width: MediaQuery.of(context).size.width * .85,
      //height: MediaQuery.of(context).size.height * 0.15,
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
                    child: Image.asset("assets/images/girl.png")),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.text2),
                    Text(widget.text3,
                        style: TextStyle(color: Colors.black38, fontSize: 12)),
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  child: CircleAvatar(
                      backgroundColor: widget.colors1,
                      radius: 8,
                      child:
                          Text(widget.text1, style: TextStyle(fontSize: 12)))),
              Text("2:23",
                  style: TextStyle(color: Colors.black38, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
