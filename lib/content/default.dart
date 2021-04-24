import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yemeksiparisuygulamasi/constant/border_radius_constant.dart';
import 'package:yemeksiparisuygulamasi/constant/padding_constant.dart';
import 'package:yemeksiparisuygulamasi/constant/theme_data_constant.dart';
import 'package:yemeksiparisuygulamasi/content/detail.dart';
import 'package:yemeksiparisuygulamasi/content/myhomepage.dart';

class DefaultPage extends StatefulWidget {
  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  bool renkDegistir = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.only(
          top: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 44),
                  child: InkWell(
                    onTap: () {},
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 25,
                      width: MediaQuery.of(context).size.width / 10,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage("images/menu.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Image(
                            image: AssetImage("images/sepet.png"),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyHomePage(),
                              ),
                            );
                          },
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Icon(Icons.logout),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: PaddingConstant.instance.textStylePadding.padding,
              child: Text(
                "Senin icin \nlezzetli yemekler",
                style: ThemeDataConstant
                    .instance.textThemeData.textTheme.headline5,
              ),
            ),
            Padding(
              padding: PaddingConstant.instance.searchPadding.padding,
              child: Container(
                height: 60,
                width: 314,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius:
                      BorderRadiusConstant.instance.searchBorderRadius,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 8,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        size: 32,
                        color: Colors.black,
                      ),
                      hintText: 'Ara',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 46),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: TabBar(
                        indicatorColor: Color.fromRGBO(255, 70, 10, 2),
                        labelColor: Color.fromRGBO(255, 70, 10, 1),
                        controller: _controller,
                        tabs: [
                          Tab(
                            child: Text("Yiyecekler"),
                          ),
                          Tab(
                            child: Text("Icecekler"),
                          ),
                          Tab(
                            child: Text("Atistirmaliklar"),
                          ),
                          Tab(
                            child: Text("Sos"),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.6,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 64, left: 10),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailPage(),
                                              ),
                                            );
                                          },
                                          highlightColor: Colors.transparent,
                                          splashColor: Colors.transparent,
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                4,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                30,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                Center(
                                                  child: Text(
                                                    "Sebzeli \nDomates \nKarisimi",
                                                    style: ThemeDataConstant
                                                        .instance
                                                        .textContainerThemeData
                                                        .textTheme
                                                        .headline5,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Center(
                                                  child: Text(
                                                    "25 TL",
                                                    style: ThemeDataConstant
                                                        .instance
                                                        .textContainerThemeData
                                                        .textTheme
                                                        .headline5,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailPage(),
                                              ),
                                            );
                                          },
                                          highlightColor: Colors.transparent,
                                          splashColor: Colors.transparent,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                5,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadiusConstant
                                                        .instance
                                                        .searchBorderRadius,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "images/tabak.png"))),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 64, left: 10),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Center(
                                                child: Text(
                                                  "Sebzeli \nDomates \nKarisimi",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Center(
                                                child: Text(
                                                  "25 TL",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              5,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusConstant
                                                  .instance.searchBorderRadius,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/tabak.png"))),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 64, left: 10),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Center(
                                                child: Text(
                                                  "Sebzeli \nDomates \nKarisimi",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Center(
                                                child: Text(
                                                  "25 TL",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              5,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusConstant
                                                  .instance.searchBorderRadius,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/tabak.png"))),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 64, left: 10),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Center(
                                                child: Text(
                                                  "Sebzeli \nDomates \nKarisimi",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Center(
                                                child: Text(
                                                  "25 TL",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              5,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusConstant
                                                  .instance.searchBorderRadius,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/tabak.png"))),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 64, left: 10),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Center(
                                                child: Text(
                                                  "Sebzeli \nDomates \nKarisimi",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Center(
                                                child: Text(
                                                  "25 TL",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              5,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusConstant
                                                  .instance.searchBorderRadius,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/tabak.png"))),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 64, left: 10),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Center(
                                                child: Text(
                                                  "Sebzeli \nDomates \nKarisimi",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Center(
                                                child: Text(
                                                  "25 TL",
                                                  style: ThemeDataConstant
                                                      .instance
                                                      .textContainerThemeData
                                                      .textTheme
                                                      .headline5,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              5,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusConstant
                                                  .instance.searchBorderRadius,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/tabak.png"))),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Center(child: Text("Icecekler"))],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Text("Atistirmaliklar")],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Text("Sos")],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 12.6 + 0.4,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Color.fromRGBO(255, 70, 10, 1),
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Color.fromRGBO(255, 70, 10, 1),
                      size: 30,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Color.fromRGBO(255, 70, 10, 1),
                      size: 30,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Icon(
                      Icons.history,
                      color: Color.fromRGBO(255, 70, 10, 1),
                      size: 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
