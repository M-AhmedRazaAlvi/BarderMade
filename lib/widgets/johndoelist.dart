import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/material.dart';

class JohnDoeList extends StatefulWidget {
  JohnDoeList({
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
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                                'is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has\nbeen the industry\'s standard dummy\ntext ever since the 1500s',
                                style: TextStyle(
                                    fontFamily: "IBM Plex Sans", fontSize: 06)),
                          )
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
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                                'is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has\nbeen the industry\'s standard dummy\ntext ever since the 1500s',
                                style: TextStyle(
                                    fontFamily: "IBM Plex Sans", fontSize: 06)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.only(top: 08),
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
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Image.asset('assets/icons/like.png')),
                          Text(
                            'Like',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.textWhite),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.buttonGreen),
                          child: Text(
                            'Offer Trade',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Image.asset('assets/icons/comment.png')),
                          Text(
                            'Comment',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.textWhite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ])),
      ],
    );
  }
}
