import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Frame23 extends StatefulWidget {
  @override
  _Frame23State createState() => _Frame23State();
}

class _Frame23State extends State<Frame23> {
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
          title: Text(
            'Offers',
          ),
        ),
        body: Column(children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/girl.png'),
            ),
            title: Text('John Doe'),
            subtitle: Row(
              children: [
                Text('2:33'),
                Icon(
                  Icons.group,
                  size: 15,
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Flexible(
              flex: 03,
              child: Column(children: [
                Container(
                    margin: EdgeInsets.all(04),
                    padding: EdgeInsets.all(02),
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.builder(
                        itemCount: 06,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child:
                                          Image.asset('assets/images/mob.png'),
                                    ),
                                    Positioned(
                                        bottom: 5,
                                        right: 5,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3, horizontal: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: AppColors.buttonGreen),
                                          child: Text('Trade',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white)),
                                        )),
                                  ]),
                                  Flexible(
                                    flex: 01,
                                    child: Icon(Icons.more_vert),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      'is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has\nbeen the industry\'s standard dummy\ntext ever since the 1500s',
                                      style: TextStyle(fontSize: 08),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        })),
              ]),
            ),
            Flexible(
              flex: 03,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(04),
                      padding: EdgeInsets.all(02),
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: ListView.builder(
                          itemCount: 06,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(children: [
                                      Container(
                                        child: Image.asset(
                                            'assets/images/watch.png'),
                                      ),
                                      Positioned(
                                          bottom: 5,
                                          right: 5,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 3, horizontal: 8),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: AppColors.buttonGreen),
                                              child: Text('Trade',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                  ))))
                                    ]),
                                    Flexible(
                                      flex: 01,
                                      child: Icon(Icons.more_vert),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(04),
                                      child: Text(
                                        'is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has\nbeen the industry\'s standard dummy\ntext ever since the 1500s',
                                        style: TextStyle(fontSize: 08),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          })),
                ],
              ),
            ),
          ]),
        ]));
  }
}
