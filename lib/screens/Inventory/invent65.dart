import 'package:bartermade/screens/add_screen/garage_76.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';

import 'package:flutter/material.dart';

class Inventory65 extends StatefulWidget {
  const Inventory65({Key key}) : super(key: key);

  @override
  _Inventory65State createState() => _Inventory65State();
}

class _Inventory65State extends State<Inventory65> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkAppBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.pinkAppBar,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_outlined)),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          children: [Flexible(flex: 04, child: CustomlistView1())],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class CustomlistView1 extends StatefulWidget {
  @override
  _CustomlistView1State createState() => _CustomlistView1State();
}

class _CustomlistView1State extends State<CustomlistView1> {
  final List<Widget> myProducts = [
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
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, i) {
          return Column(children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/girl.png"),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 20,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("John Doe",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.47,
                                  margin: EdgeInsets.only(left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "4.4",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(Icons.star,
                                                size: 15, color: Colors.yellow)
                                          ],
                                        ),
                                      ),
                                      Icon(Icons.more_horiz_outlined, size: 25)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text("2:23 ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54)),
                                      Icon(Icons.group,
                                          size: 15, color: Colors.black54)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                              height: MediaQuery.of(context).size.height / 07,
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
                                  icon: Image.asset('assets/icons/arrow.png'),
                                  onPressed: null)
                            ],
                          )),
                      Flexible(
                        flex: 04,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 07,
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
                                IconButton(
                                    icon: Image.asset('assets/icons/like.png'),
                                    onPressed: null),
                                Text('Like',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.textWhite)),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => GarageSale76()));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.buttonGreen),
                              child: Text(
                                'Offer Trade',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                    icon:
                                        Image.asset('assets/icons/comment.png'),
                                    onPressed: null),
                                Text(
                                  'Comment',
                                  style: TextStyle(
                                      fontSize: 12, color: AppColors.textWhite),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ]),
            ),
          ]);
        },
      ),
    );
  }
}
