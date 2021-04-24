import 'package:flutter/material.dart';
import 'package:yemeksiparisuygulamasi/constant/border_radius_constant.dart';
import 'package:yemeksiparisuygulamasi/constant/padding_constant.dart';
import 'package:yemeksiparisuygulamasi/constant/theme_data_constant.dart';
import 'package:yemeksiparisuygulamasi/content/login.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: PaddingConstant.instance.paddingConstant.padding,
          child: Container(
            height: MediaQuery.of(context).size.height / 11,
            width: MediaQuery.of(context).size.height / 11,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage("images/Bella.png")),
              borderRadius: BorderRadiusConstant.instance.borderRadiusContainer,
            ),
          ),
        ),
        Padding(
          padding: PaddingConstant.instance.textPadding.padding,
          child: Text(
            "Herkes icin\nYemek",
            style: ThemeDataConstant
                .instance.themeDataConstant.textTheme.headline6,
          ),
        ),
        Container(
          width: double.infinity,
          height: 370,
          child: Stack(
            children: [
              Positioned(
                top: 60,
                right: 0,
                child: Container(
                  height: 325,
                  width: 225,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/ToyFaces.png"),
                      fit: BoxFit.fitWidth,
                      repeat: ImageRepeat.noRepeat,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -71,
                child: Container(
                  width: 410,
                  height: 415,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/ToyFacesMother.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(255, 75, 58, 0),
                        Color.fromRGBO(255, 75, 58, 1)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: PaddingConstant.instance.buttonPadding.padding,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Container(
              width: 314,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusConstant.instance.buttonBorderRadius,
              ),
              child: Center(
                child: Text(
                  "Basla",
                  style: ThemeDataConstant
                      .instance.buttonDataConstant.textTheme.headline5,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
