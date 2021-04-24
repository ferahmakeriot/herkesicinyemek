import 'package:flutter/material.dart';
import 'package:yemeksiparisuygulamasi/constant/color_constant.dart';
import 'package:yemeksiparisuygulamasi/content/myhomepage.dart';

class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.backgroundColor,
      body: MyHomePage(),
    );
  }
}
