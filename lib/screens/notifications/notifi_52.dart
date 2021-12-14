import 'package:bartermade/screens/chat/chats_71.dart';
import 'package:bartermade/screens/chat/chats_72.dart';
import 'package:bartermade/screens/notifications/notifi_49.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class Notifi52 extends StatefulWidget {
  const Notifi52({Key key}) : super(key: key);

  @override
  _Notifi52State createState() => _Notifi52State();
}

class _Notifi52State extends State<Notifi52> {
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            JohnStackwidget(),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "John Doe",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 15,
                ),
                Text(
                  "London",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.25,
                  //color: Colors.grey,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(right: 5, bottom: 10),
                                    child: Text("Rating")),
                                Row(
                                  children: [
                                    Text("4.4",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 16)
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Chats71()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 10),
                                      child: Text("Follower")),
                                  Text("545",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Chats72()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 10),
                                      child: Text("Following")),
                                  Text("34",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: 5),
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(right: 5, bottom: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.white))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Active"),
                                    )),
                                Row(
                                  children: [
                                    Text("23",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(right: 5, bottom: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.white))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Completed"),
                                    )),
                                Text("101",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(right: 5, bottom: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom:
                                                BorderSide(color: Colors.red))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Canceled"),
                                    )),
                                Text("34",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            JohnDoeList(
                myProducts: myProducts,
                myProducts1: myProducts1,
                height: height,
                width: width),
            JohnDoeList(
                myProducts: myProducts,
                myProducts1: myProducts1,
                height: height,
                width: width),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class JohnDoeList extends StatefulWidget {
  const JohnDoeList({
    Key key,
    @required this.myProducts,
    @required this.myProducts1,
    @required this.height,
    @required this.width,
  });

  final List<Widget> myProducts;
  final List<Widget> myProducts1;
  final double height;
  final double width;

  @override
  State<JohnDoeList> createState() => _JohnDoeListState();
}

class _JohnDoeListState extends State<JohnDoeList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: Colors.grey,
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * .9,
          child: ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/girl.png'),
            ),
            title: Text('John Doe'),
            subtitle: Row(
              children: [
                Text('2:33'),
                SizedBox(width: 10),
                Icon(Icons.group, size: 15),
              ],
            ),
            trailing: PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                          child: Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        height: 30,
                        width: 100,
                        child: Text(
                          "Delete",
                          style: TextStyle(color: AppColors.pinkColor),
                        ),
                      ))
                    ],
                child: Icon(Icons.more_horiz_outlined)),
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.greyContainer),
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
                                itemCount: widget.myProducts.length,
                                itemBuilder: (context, index) {
                                  return Stack(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        child: widget.myProducts[index],
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
                                itemCount: widget.myProducts1.length,
                                itemBuilder: (context, index) {
                                  return Stack(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        child: widget.myProducts1[index],
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
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: AppColors.textGrey),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFF5757)),
                        child: Text(
                          'Canceled',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              ),
            ])),
      ],
    );
  }
}
