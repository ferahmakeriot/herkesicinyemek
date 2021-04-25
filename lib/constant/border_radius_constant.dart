import 'package:flutter/cupertino.dart';

class BorderRadiusConstant {
  static BorderRadiusConstant _instance;
  static BorderRadiusConstant get instance {
    if (_instance != null) return _instance;
    _instance = BorderRadiusConstant._init();
    return _instance;
  }

  BorderRadiusConstant._init();

  BorderRadius get borderRadiusContainer => BorderRadius.all(
        Radius.circular(35),
      );

  BorderRadius get buttonBorderRadius => BorderRadius.all(
        Radius.circular(
          35,
        ),
      );
  BorderRadius get loginBorderRadius => BorderRadius.only(
        bottomLeft: Radius.circular(
          30,
        ),
        bottomRight: Radius.circular(
          30,
        ),
      );
  BorderRadius get searchBorderRadius => BorderRadius.all(
        Radius.circular(
          35,
        ),
      );

  BorderRadius get addtocardBorderRadius => BorderRadius.all(
        Radius.circular(30),
      );
}
