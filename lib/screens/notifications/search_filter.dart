import 'package:flutter/material.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key key}) : super(key: key);

  @override
  _SearchFilterState createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          "Search",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(238, 238, 238, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 10, top: 3),
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          hintText: " Search...",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.black38),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.search, size: 18),
                            color: Colors.black38,
                            onPressed: () {},
                          )),
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Filter",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      //color: Colors.blue,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              filterButtonwidgets(
                                  color1: Colors.black54, text: "Camera"),
                              filterButtonwidgets(
                                  color1: Colors.black54, text: "Mobile"),
                              filterButtonwidgets(
                                  color1: Colors.blue, text: "Shirts"),
                              filterButtonwidgets(
                                  color1: Colors.black54, text: "Chairs"),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                width: MediaQuery.of(context).size.width * 0.19,
                                margin: EdgeInsets.only(left: 5, top: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.6),
                                    borderRadius: BorderRadius.circular(15)),
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black54),
                                  ),
                                  onPressed: () {},
                                  child: Text("Hardware"),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                width: MediaQuery.of(context).size.width * 0.17,
                                margin: EdgeInsets.only(left: 5, top: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.6),
                                    borderRadius: BorderRadius.circular(15)),
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                  ),
                                  onPressed: () {},
                                  child: Text("Speaker"),
                                ),
                              ),
                              filterButtonwidgets(
                                  color1: Colors.black54, text: "Camera"),
                              filterButtonwidgets(
                                  color1: Colors.black54, text: "Camera"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'Select All',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Recent Search",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    RecentSearch(text2: "Camera"),
                    RecentSearch(text2: "Mobile"),
                    RecentSearch(text2: "Camera"),
                    RecentSearch(text2: "Mobile"),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset("assets/images/Rectangle 129.png"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentSearch extends StatelessWidget {
  final String text2;
  const RecentSearch({
    Key key,
    this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black26))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              text2,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Container(
              child: Icon(
            Icons.clear,
            size: 16,
            color: Colors.black54,
          ))
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class filterButtonwidgets extends StatelessWidget {
  final String text;
  final Color color1;
  const filterButtonwidgets({
    Key key,
    this.text,
    this.color1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width * 0.16,
      margin: EdgeInsets.only(left: 5, top: 5),
      decoration: BoxDecoration(
          border: Border.all(width: 0.6),
          borderRadius: BorderRadius.circular(15)),
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(color1),
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
