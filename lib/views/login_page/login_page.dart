import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isShowPassWord = false;
  String username = '';
  String password = '';
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          image: NetworkImage('http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
          fit: BoxFit.cover,
        ),
        //边界
//        border: Border.all(
//          color: Colors.black,
//          width: 8.0,
//        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "友德医智慧诊室助手",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.85,
            margin: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
            padding:EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              children: <Widget>[
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );

//    return Scaffold(
//      body: SingleChildScrollView(
//        child: Container(
//          height: MediaQuery.of(context).size.height,
//          width: MediaQuery.of(context).size.width,
//          color: Theme.of(context).primaryColor,
//          child: Center(
//            child: Container(
//              width: MediaQuery.of(context).size.width * 0.85,
//              decoration: BoxDecoration(
//                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                  color: Colors.white,
//                  image: DecorationImage(
//                    image: AssetImage("assets/images/paimaiLogo.png"),
//                    fit: BoxFit.scaleDown,
//                    alignment: Alignment.bottomRight,
//                  )),
//              child: Stack(
//                children: <Widget>[
//                  Column(
//                    mainAxisSize: MainAxisSize.min,
//                    children: <Widget>[
//                      SizedBox(height: 35.0),
//                      Image.asset(
//                        "assets/images/FlutterGo.png",
//                        fit: BoxFit.contain,
//                        width: 100,
//                        height: 100,
//                      ),
//                      SizedBox(height: 35.0),
//                    ],
//                  ),
//                  Positioned(
//                    top: 0,
//                    left: 0,
//                    bottom: 0,
//                    child: buildLoading(),
//                  )
//                ],
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
  }

  Widget buildLoading() {
    if (isLoading) {
      return Opacity(
        opacity: .5,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: Colors.black,
          ),
          child: SpinKitPouringHourglass(color: Colors.white),
        ),
      );
    }
    return new Container();
  }
}
