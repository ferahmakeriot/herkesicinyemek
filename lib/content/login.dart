import 'package:flutter/material.dart';
import 'package:yemeksiparisuygulamasi/constant/border_radius_constant.dart';
import 'package:yemeksiparisuygulamasi/constant/color_constant.dart';
import 'package:yemeksiparisuygulamasi/constant/padding_constant.dart';
import 'package:yemeksiparisuygulamasi/constant/theme_data_constant.dart';
import 'package:yemeksiparisuygulamasi/content/default.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  TabController _controller;
  String username;
  String password;
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.3,
                  color: Colors.grey,
                  offset: Offset(0.3, 0.0),
                  spreadRadius: 0.5,
                ),
              ],
              image: DecorationImage(image: AssetImage("images/Group.png")),
              borderRadius: BorderRadiusConstant.instance.loginBorderRadius,
              color: Colors.white,
            ),
            child: Padding(
              padding: PaddingConstant.instance.tabPadding.padding,
              child: TabBar(
                controller: _controller,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Text(
                      "Giris",
                      style: ThemeDataConstant
                          .instance.tabThemeData.textTheme.headline5,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Kayit Ol",
                      style: ThemeDataConstant
                          .instance.tabThemeData.textTheme.headline5,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.7 + 21.6,
            color: Colors.transparent,
            child: TabBarView(
              controller: _controller,
              children: [
                Form(
                  key: _formkey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: PaddingConstant.instance.loginPadding.padding,
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(255, 70, 10, 1),
                              ),
                            ),
                            labelText: 'E-Mail Adres',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "E mail adresini giriniz";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            username = value;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            PaddingConstant.instance.passwordPadding.padding,
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(255, 70, 10, 1),
                              ),
                            ),
                            labelText: 'Sifre',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Sifrenizi Giriniz";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            password = value;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            PaddingConstant.instance.passcodePadding.padding,
                        child: Text(
                          "Sifreyi Unuttum ?",
                          style: ThemeDataConstant
                              .instance.buttonDataConstant.textTheme.headline5,
                        ),
                      ),
                      Padding(
                        padding:
                            PaddingConstant.instance.loginButtonPadding.padding,
                        child: InkWell(
                          onTap: () {
                            if (_formkey.currentState.validate()) {
                              _formkey.currentState.save();
                              if (username == "a" && password == "a") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DefaultPage(),
                                  ),
                                );
                              } else {
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Hatali Giris"),
                                      content: Text("Giris Yapilamadi"),
                                      actions: [
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Login(),
                                              ),
                                            );
                                          },
                                          child: Text("Geri"),
                                        )
                                      ],
                                    );
                                  },
                                );
                              }
                            }
                          },
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 314,
                            height: 70,
                            decoration: BoxDecoration(
                              color: ColorConstant.instance.backgroundColor,
                              borderRadius: BorderRadiusConstant
                                  .instance.buttonBorderRadius,
                            ),
                            child: Center(
                                child: Text(
                              "Giris Yap",
                              style: ThemeDataConstant.instance
                                  .loginButtonThemeData.textTheme.headline5,
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
