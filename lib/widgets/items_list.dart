import 'package:bartermade/screens/notifications/frame23.dart';
import 'package:bartermade/screens/notifications/frame24.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomlistView extends StatefulWidget {
  @override
  _CustomlistViewState createState() => _CustomlistViewState();
}

class _CustomlistViewState extends State<CustomlistView> {
  final List<Widget> myProducts = [
    Column(
      children: [Image.asset('assets/icons/mbl1.png'), Text("aaaa")],
    ),
    Image.asset('assets/icons/mbl2.png'),
    Image.asset('assets/icons/ball.png'),
    Image.asset('assets/icons/cute.png'),
    Image.asset('assets/icons/toys.png'),
    Image.asset('assets/icons/mbl3.png'),
    Image.asset('assets/icons/bear.png'),
    Image.asset('assets/icons/Rectangle.png'),
    Image.asset('assets/icons/colorfulBall.png'),
  ];

  final List<Widget> myProducts1 = [
    Image.asset('assets/icons/mbl1.png'),
    Image.asset('assets/icons/mbl2.png'),
    Image.asset('assets/icons/ball.png'),
    Image.asset('assets/icons/cute.png'),
    Image.asset('assets/icons/toys.png'),
    Image.asset('assets/icons/mbl3.png'),
    Image.asset('assets/icons/bear.png'),
    Image.asset('assets/icons/Rectangle.png'),
    Image.asset('assets/icons/colorfulBall.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, i) {
          return Column(children: [
            ListTile(
              leading: CircleAvatar(
                child: Image.asset('assets/images/girl.png'),
              ),
              title: Text('John Doe'),
              subtitle: Row(
                children: [
                  Text('2:33'),
                  Icon(Icons.group, size: 15),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.greyContainer),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(08),
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: AppColors.textGrey.withOpacity(0.5)),
                        child: Center(
                            child: Text(
                          'HI i want to trade these items if any one interested let me know ',
                          style: TextStyle(fontSize: 10),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 04,
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 07,
                                    child: GridView.builder(
                                        gridDelegate:
                                            SliverGridDelegateWithMaxCrossAxisExtent(
                                                maxCrossAxisExtent: 60,
                                                childAspectRatio: 1.25,
                                                crossAxisSpacing: 0,
                                                mainAxisSpacing: 0),
                                        itemCount: myProducts.length,
                                        itemBuilder: (context, index) {
                                          return Stack(
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 35,
                                                child: myProducts[index],
                                              ),
                                              Positioned(
                                                  left: 25,
                                                  child: Icon(
                                                    Icons.cancel,
                                                    size: 10,
                                                  ))
                                            ],
                                          );
                                        }),
                                  ),
                                  Text(
                                      'is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has\nbeen the industry\'s standard dummy\ntext ever since the 1500s',
                                      style: TextStyle(fontSize: 07))
                                ],
                              ),
                            ),
                            Flexible(
                                flex: 02,
                                child: Column(
                                  children: [
                                    IconButton(
                                        icon: Image.asset(
                                            'assets/icons/arrow.png'),
                                        onPressed: null)
                                  ],
                                )),
                            Flexible(
                              flex: 04,
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 07,
                                    child: GridView.builder(
                                        gridDelegate:
                                            SliverGridDelegateWithMaxCrossAxisExtent(
                                                maxCrossAxisExtent: 60,
                                                childAspectRatio: 1.25,
                                                crossAxisSpacing: 0,
                                                mainAxisSpacing: 0),
                                        itemCount: myProducts1.length,
                                        itemBuilder: (context, index) {
                                          return Stack(
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 35,
                                                child: myProducts1[index],
                                              ),
                                              Positioned(
                                                  left: 25,
                                                  child: Icon(
                                                    Icons.cancel,
                                                    size: 10,
                                                  ))
                                            ],
                                          );
                                        }),
                                  ),
                                  Text(
                                      'is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has\nbeen the industry\'s standard dummy\ntext ever since the 1500s',
                                      style: TextStyle(fontSize: 07))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 08),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: AppColors.textGrey),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Row(
                                  children: [
                                    Image.asset('assets/icons/like.png'),
                                    SizedBox(width: 4),
                                    Text(
                                      'Like',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.textWhite),
                                    ),
                                  ],
                                )),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Frame23()));
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(left: 10),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColors.buttonGreen),
                                      child: Text(
                                        'Send Offer',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Frame24()));
                                  },
                                  child: Row(
                                    children: [
                                      Image.asset('assets/icons/comment.png'),
                                      SizedBox(width: 4),
                                      Text(
                                        'Comment',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.textWhite),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ])),
          ]);
        },
      ),
    );
  }
}
