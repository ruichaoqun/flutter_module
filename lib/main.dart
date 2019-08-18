import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_module/utils/shared_preferences.dart';
import 'package:flutter_module/views/login_page/login_page.dart';

SpUtil sp;
const int ThemeColor = 0xFFC91B3A;

void main() async {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //是否已登录
  bool _hasLogin = false;

  //是否正在登陆中
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "title",
      theme: new ThemeData(
        primaryColor: Color(ThemeColor),
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: Color(0xFF888888),
        textTheme: TextTheme(
          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          color: Color(ThemeColor),
          size: 35.0,
        ),
      ),
      home: new Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
