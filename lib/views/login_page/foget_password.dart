import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '忘记密码',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.grey,
          onPressed: () {Navigator.of(context).pop(this);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.account_balance),
            SizedBox(height: 15.0,),
            Padding(
              padding: EdgeInsets.only(left: 15.0,right: 15.0),
              child: RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: '若您忘记登录密码，请致电客服',
                        style: TextStyle(color: Colors.black45)),
                    TextSpan(
                        text: '020-88465212', style: TextStyle(color: Colors.blue)),
                    TextSpan(
                        text: '联系找回，谢谢', style: TextStyle(color: Colors.black45)),
                  ])),
            ),
            SizedBox(height: 30.0,),
            MaterialButton(
              minWidth: 200.0,
              height: 45.0,
              child: const Text(
                '登录',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Text('020-88465212',
                              style: TextStyle(color: Colors.black45)),
                          actions: <Widget>[
                            new FlatButton(
                              child: new Text("取消"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            new FlatButton(
                              child: new Text(
                                "呼叫",
                                style: TextStyle(color: Colors.blue),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                                _launchURL();
                              },
                            ),
                          ],
                        ));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'tel:020-88465212';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
