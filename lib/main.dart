import 'package:flutter/material.dart';

import 'package:yemeksiparisuygulamasi/content/scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String _title = 'Yemek Siparis Uygulamasi';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: ScaffoldPage(),
    );
  }
}
