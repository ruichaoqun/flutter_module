import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userNameEditingController =
  new TextEditingController();
  TextEditingController _passwordEditingController =
  new TextEditingController();
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
            width: MediaQuery.of(context).size.width * 0.85,
            margin: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
            padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30.0),
                Theme(data: new ThemeData(primaryColor: Colors.grey,hintColor: Colors.grey),
                  child: TextField(
                    controller: _userNameEditingController,
                    style:
                    TextStyle(color: Color(0xff333333), fontSize: 16.0),
                    obscureText: false,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        hintText: '请输入登录账号',
                        prefixIcon: Icon(
                          Icons.local_airport,
                        )
                    ),
                  ),),
                SizedBox(height: 30.0),
                Theme(data: new ThemeData(primaryColor: Colors.grey,hintColor: Colors.grey),
                  child: TextField(
                    controller: _passwordEditingController,
                    style:
                    TextStyle(color: Color(0xff333333), fontSize: 16.0),
                    obscureText: true,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        hintText: '请输入登录密码',
                        prefixIcon: Icon(
                          Icons.star,
                        )
                    ),
                  ),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RawMaterialButton(
                      fillColor:Colors.yellow,
                      child: Container(color: Colors.blue,
                      child: Text('忘记密码', style: TextStyle(color: Colors.blue,fontSize: 14.0)),),
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45.0,
                  child: RaisedButton(
                    child: const Text(
                      '登录',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    onPressed: () {
                      print("阿士大夫国家和水果");
                      doLogin();
                    },
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  ),
                ),
                SizedBox(height: 15.0),
              ],
            ),
          )
        ],
      ),
    );
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

  void doLogin() {
    if(_userNameEditingController.text == null ){
      Toast.show("请输入登录账号", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      return;
    }

    if(_passwordEditingController.text == null ){
      Toast.show("请输入登录密码", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      return;
    }

  }
}
