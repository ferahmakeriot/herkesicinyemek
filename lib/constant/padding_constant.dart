import 'package:flutter/cupertino.dart';

class PaddingConstant {
  static PaddingConstant _instance;
  static PaddingConstant get instance {
    if (_instance != null) return _instance;
    _instance = PaddingConstant._init();
    return _instance;
  }

  PaddingConstant._init();

  Padding get paddingConstant => Padding(
        padding: EdgeInsets.only(
          top: 80,
          left: 43,
        ),
      );

  Padding get textPadding => Padding(
        padding: EdgeInsets.only(
          left: 51,
          top: 10,
        ),
      );

  Padding get buttonPadding => Padding(
        padding: EdgeInsets.only(
          left: 43,
          top: 25,
        ),
      );

  Padding get tabPadding => Padding(
        padding: EdgeInsets.only(
          top: 250,
        ),
      );
  Padding get loginPadding => Padding(
        padding: EdgeInsets.only(
          left: 50,
          right: 50,
          top: 54,
        ),
      );
  Padding get passwordPadding => Padding(
        padding: EdgeInsets.only(
          left: 50,
          right: 50,
          top: 40,
        ),
      );
  Padding get passcodePadding => Padding(
        padding: EdgeInsets.only(
          left: 50,
          right: 213,
          top: 34,
        ),
      );
  Padding get loginButtonPadding => Padding(
        padding: EdgeInsets.only(
          left: 50,
          right: 50,
          top: 70,
        ),
      );
  Padding get textStylePadding => Padding(
        padding: EdgeInsets.only(top: 43, left: 44),
      );

  Padding get searchPadding => Padding(
        padding: EdgeInsets.only(
          top: 28,
          left: 40,
        ),
      );
}
