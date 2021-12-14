import 'package:bartermade/screens/chat/chats_88.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class GroupName89 extends StatefulWidget {
  const GroupName89({Key key}) : super(key: key);

  @override
  _GroupName89State createState() => _GroupName89State();
}

class _GroupName89State extends State<GroupName89> {
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        leading: Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20),
            child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Chat88()));
                },
                child: Icon(Icons.arrow_back, color: Colors.black, size: 35))),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle 255.png"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Group Name',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                              "assets/images/ic_mode_edit_24px.png",
                              color: Colors.black))
                    ],
                  ),
                  Text('Group Description',
                      style: TextStyle(color: Colors.black, fontSize: 13)),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "10 Participants",
                    style: TextStyle(color: AppColors.pinkColor),
                  )),
              newMethod(context, 10),
              Text("Show more"),
              Icon(Icons.keyboard_arrow_down),
              Container(
                  height: MediaQuery.of(context).size.height * 0.02,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Trades",
                    style: TextStyle(color: AppColors.pinkColor),
                  )),
              johnDoewidget(context, 10),
            ],
          ),
        ),
      ),
    );
  }

  Container newMethod(BuildContext context, int size) {
    return Container(
      height: 230,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: size,
          itemBuilder: (context, i) {
            return Container(
              child: ListTile(
                leading: Image.asset("assets/images/girl.png"),
                title: Text(
                  "John Doe",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                subtitle: Text("i’m busy......"),
                trailing: Container(child: Icon(Icons.more_vert, size: 20)),
              ),
            );
          }),
    );
  }

  Container johnDoewidget(BuildContext context, int size) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: size,
            itemBuilder: (context, i) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.27,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.black38))),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset("assets/images/Avatar.png"),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("John Doe"),
                                      Row(
                                        children: [
                                          Text(
                                            '4.4',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(Icons.star,
                                              size: 15, color: Colors.yellow),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("John Doe"),
                                  Container(
                                    width: 60,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '4.4',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.star,
                                            size: 15, color: Colors.yellow),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child:
                                      Image.asset("assets/images/Avatar.png")),
                              Icon(Icons.more_vert),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
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
                                                child: myProducts[index]),
                                            Positioned(
                                                left: 25,
                                                child: Icon(Icons.cancel,
                                                    size: 10))
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
                                      icon:
                                          Image.asset('assets/icons/arrow.png'),
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
                                                child: myProducts1[index]),
                                            Positioned(
                                                left: 25,
                                                child: Icon(Icons.cancel,
                                                    size: 10))
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
                  ],
                ),
              );
            }));
  }
}
