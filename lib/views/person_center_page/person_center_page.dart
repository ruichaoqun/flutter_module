import 'package:flutter/material.dart';

class PersonCenterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _PersonCenterState();
  }
}

class _PersonCenterState extends State<PersonCenterPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("个人中心"),
        ),
      ),
    );
  }

}