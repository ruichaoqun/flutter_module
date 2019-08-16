import 'package:flutter/material.dart';
import 'package:flutter_module/views/person_center_page/person_center_page.dart';
import 'package:flutter_module/views/main_page/main_page.dart';
import 'package:flutter_module/views/device_page/device_page.dart';


class AppPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<AppPage>{
  List<Widget> list = List();
  int _currentIndex = 0;
  static List tabData = [
    {'text': '首页', 'icon': Icon(Icons.language)},
    {'text': '设备', 'icon': Icon(Icons.extension)},
    {'text': '个人中心', 'icon': Icon(Icons.favorite)},
  ];
  List<BottomNavigationBarItem> myTabs = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < tabData.length; i++) {
      myTabs.add(BottomNavigationBarItem(
        icon: tabData[i]['icon'],
        title: Text(
          tabData[i]['text'],
        ),
      ));
    }
    list
      ..add(MainPage())
      ..add(DevicePage())
      ..add(PersonCenterPage());
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: myTabs,
        //高亮  被点击高亮
        currentIndex: _currentIndex,
        //修改 页面
        onTap: _ItemTapped,
        //shifting :按钮点击移动效果
        //fixed：固定
        type: BottomNavigationBarType.fixed,

        fixedColor: Colors.blue,
      ),
    );
  }

  void _ItemTapped(int index) {
    setState(() {
      _currentIndex = index;
//      appBarTitle = tabData[index]['text'];
    });
  }

}