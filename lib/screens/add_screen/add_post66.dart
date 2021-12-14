import 'package:bartermade/screens/Inventory/inven83.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AddPost66 extends StatefulWidget {
  const AddPost66({Key key}) : super(key: key);

  @override
  _AddPost66State createState() => _AddPost66State();
}

class _AddPost66State extends State<AddPost66> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    "assets/images/Rectangle9.png",
    "assets/images/Rectangle 188.png",
    "assets/images/Rectangle 189.png",
    "assets/images/Rectangle 190.png",
    "assets/images/Rectangle 191.png",
    "assets/images/Rectangle 192.png",
    "assets/images/Rectangle 193.png",
    "assets/images/Rectangle 194.png",
    "assets/images/Rectangle 195.png",
    "assets/images/Rectangle 196.png",
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkAppBar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.pinkAppBar,
        leading: Icon(Icons.arrow_back_outlined),
      ),
      body: SingleChildScrollView(
        child: Container(
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
            children: [
              Container(
                  margin: EdgeInsets.only(left: 35, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/girl.png"),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("John Doe", style: TextStyle(fontSize: 18)),
                            Row(
                              children: [
                                Text("2:23 ",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black54)),
                                Icon(Icons.group,
                                    size: 15, color: Colors.black54)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    carouselSlider = CarouselSlider(
                      height: 300.0,
                      initialPage: 0,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      items: imgList.map((imgUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Image.asset(imgUrl, fit: BoxFit.fill),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: map<Widget>(imgList, (index, url) {
                          return Container(
                            width: 10.0,
                            height: 10.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? Colors.redAccent
                                  : Colors.green,
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/images/Rectangle 188.png"),
                    Image.asset("assets/images/Rectangle 189.png"),
                    Image.asset("assets/images/Rectangle 190.png"),
                    Image.asset("assets/images/Rectangle 191.png"),
                    Image.asset("assets/images/Rectangle 192.png"),
                    Image.asset("assets/images/Rectangle 193.png"),
                    Image.asset("assets/images/Rectangle 194.png"),
                    Image.asset("assets/images/Rectangle 195.png"),
                    Image.asset("assets/images/Rectangle 196.png"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    "is simply dummy text of the printing and typesetting\nindustry. Lorem Ipsum has been the industry's\nstandard dummy text ever since the 1500s"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.thumb_up_outlined, color: Colors.white),
                          Text(
                            "Like",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Inventory83()));
                      },
                      child: Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                              color: AppColors.buttonGreen,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "Offer Trade",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return new AlertDialog(
                              content: Container(
                                child: TextFormField(
                                  minLines: 5,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                    new Radius.circular(10.0),
                                  ))),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25.0,
                                  ),
                                ),
                              ),
                              title: Text(" Enter your opinion"),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.chat_outlined, color: Colors.white),
                            Text(
                              "Comment",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
