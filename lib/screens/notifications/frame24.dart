import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Frame24 extends StatefulWidget {
  @override
  _Frame24State createState() => _Frame24State();
}

class _Frame24State extends State<Frame24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: AppColors.pinkAppBar,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text('Comments'),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 04,
            child: ListView.builder(
              itemBuilder: (context, inedx) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 08),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 05),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    minRadius: 05,
                                    child:
                                        Image.asset('assets/images/image1.png'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Text('John Doe'), Text('23 min')],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        //color: Colors.grey,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: Text(
                          'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been\nthe industry\'s standard dummy text ever since the 1500s is simply dummy text of the\nprinting and typesetting industry. Lorem Ipsum has been the industry\'s standard\ndummy text ever since the 1500s',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 08),
                        child: Row(
                          children: [
                            Text(
                              'Like',
                              style: TextStyle(
                                  color: AppColors.textGrey, fontSize: 12),
                            ),
                            Icon(Icons.favorite, color: Colors.red, size: 15),
                            SizedBox(width: 10),
                            Text(
                              'Reply',
                              style: TextStyle(
                                  color: AppColors.textGrey, fontSize: 12),
                            ),
                            Icon(Icons.comment,
                                color: Color(0xff7B7B7B), size: 15)
                          ],
                        ),
                      ),
                      Divider(height: 0.5, color: Colors.black, indent: 0.5)
                    ],
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // width: 280,
              margin: EdgeInsets.symmetric(horizontal: 08, vertical: 05),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.emoji_emotions_outlined,
                    ),
                    SizedBox(width: 03),
                    Expanded(
                      flex: 03,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'type message here ',
                            disabledBorder: InputBorder.none),
                      ),
                    ),
                    SizedBox(width: 03),
                    GestureDetector(
                      onTap: null,
                      child: Icon(Icons.image),
                    ),
                    SizedBox(width: 03),
                    GestureDetector(
                      onTap: null,
                      child: Icon(Icons.send),
                    ),
                  ]),
            ),
          ),
        ],
      ),
      //bottomNavigationBar: CustomBottomBar(),
    );
  }
}
