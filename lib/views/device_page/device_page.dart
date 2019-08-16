import 'package:flutter/material.dart';

class DevicePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _DeviceState();
  }
}

class _DeviceState extends State<DevicePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("设备"),
        ),
      ),
    );
  }

}