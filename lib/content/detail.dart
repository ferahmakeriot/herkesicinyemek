import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yemeksiparisuygulamasi/constant/border_radius_constant.dart';
import 'package:yemeksiparisuygulamasi/constant/theme_data_constant.dart';

class DetailPage extends StatefulWidget {
  DetailPage() : super();
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _current = 0;
  List imgList = [
    "images/tabak.png",
    "images/tabak.png",
    "images/tabak.png",
    "images/tabak.png",
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  CarouselSlider carouselSlider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 65, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  onPressed: () {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                )
              ],
            ),
          ),
          carouselSlider = CarouselSlider(
            options: CarouselOptions(
              initialPage: 0,
              enlargeCenterPage: true,
              reverse: false,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int index,
                  CarouselPageChangedReason carouselPageChangedReason) {
                setState(
                  () {
                    _current = index;
                  },
                );
              },
            ),
            items: imgList.map((imgUrl) {
              return Builder(builder: (BuildContext context) {
                return Image.asset(imgUrl);
              });
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                height: 10.0,
                width: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Colors.grey
                      : Color.fromRGBO(255, 70, 10, 1),
                ),
              );
            }),
          ),
          Padding(
            padding: EdgeInsets.only(top: 45, left: 60),
            child: Text(
              "Sebzeli domates karisimi",
              style: ThemeDataConstant
                  .instance.textContainerThemeData.textTheme.headline5
                  .copyWith(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 165),
            child: Text(
              "25 TL",
              style: ThemeDataConstant
                  .instance.textContainerThemeData.textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 23, left: 40),
            child: Text(
              "Teslimat bilgisi",
              style: ThemeDataConstant
                  .instance.detayTextThemeData.textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 40),
            child: Text(
              "20 Ağustos Pazartesi ile Perşembe 20:00 - 21:00 arası teslim edilir.",
              style: ThemeDataConstant
                  .instance.teslimatTextThemeData.textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 40),
            child: Text(
              "İade politikasi",
              style: ThemeDataConstant
                  .instance.detayTextThemeData.textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 40, right: 20),
            child: Text(
              "Mağazalarımızdan çıkmadan önce tüm yiyeceklerimiz iki kez kontrol edilir, bu nedenle kırılmış bir yiyecek bulduğunuzda lütfen hemen yardım hattımızla iletişime geçin.",
              style: ThemeDataConstant
                  .instance.teslimatTextThemeData.textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 15),
            child: InkWell(
              onTap: () {},
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 70, 10, 1),
                  borderRadius:
                      BorderRadiusConstant.instance.addtocardBorderRadius,
                ),
                child: Center(
                  child: Text(
                    "Kart Ekle",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
