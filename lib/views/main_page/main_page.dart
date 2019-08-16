import 'package:flutter/material.dart';
import 'package:flutter_module/widget/banner_widget.dart';

class MainPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage>{
  List<BannerItem> bannerList = [];

  @override
  void initState() {
    super.initState();
    BannerItem item = BannerItem.defaultBannerItem(
        '''http://n.sinaimg.cn/news/1_img/vcg/2b0c102b/64/w1024h640/20181024/wBkr-hmuuiyw6863395.jpg''',
        '''近日，北大全校教师干部大会刚刚召开，63岁的林建华卸任北大校长；原北大党委书记郝平接替林建华，成为新校长。曾在北京任职多年、去年担任山西高院院长的邱水平回到北大，担任党委书记。图为2018年5月4日，北京大学举行建校120周年纪念大会，时任北京大学校长林建华（右）与时任北京大学党委书记郝平（左）''');
    bannerList.add(item);
    item = BannerItem.defaultBannerItem(
        '''http://n.sinaimg.cn/news/1_img/vcg/2b0c102b/99/w1024h675/20181024/FGXD-hmuuiyw6863401.jpg''',
        '''邱水平、郝平、林建华均为“老北大人”，都曾离开北大，又重归北大任职。图为2018年5月4日，北京大学举行建校120周年纪念大会，时任北京大学党委书记郝平讲话''');
    bannerList.add(item);
    item = BannerItem.defaultBannerItem(
        '''http://n.sinaimg.cn/news/1_img/vcg/2b0c102b/107/w1024h683/20181024/kZj2-hmuuiyw6863420.jpg''',
        '''此番卸任的林建华，亦是北大出身，历任重庆大学、浙江大学、北京大学三所“双一流”高校校长。图为2018年5月4日，北京大学举行建校120周年纪念大会，时任北京大学校长林建华讲话。''');
    bannerList.add(item);
    item = BannerItem.defaultBannerItem(
        '''http://n.sinaimg.cn/news/1_img/vcg/2b0c102b/105/w1024h681/20181024/tOiL-hmuuiyw6863462.jpg''',
        '''书记转任校长的郝平，为十九届中央委员会候补委员。从北大毕业后留校，后离开北大，历任北京外国语大学校长、教育部副部长。2016年12月，时隔11年，郝平再回北大，出任北大党委书记。''');
    bannerList.add(item);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("友德医智慧诊室助手",style: TextStyle(color: Colors.black54)),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.message)),
        ],
        leading: IconButton(icon: Icon(Icons.star),),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          new BannerWidget(
            180.0,
            bannerList,
            bannerPress: (pos, item) {
              print('第 $pos 点击了');
            },
          ),
          _containWidget(),
        ],
      ),
    );
  }

  Widget _containWidget() {
    return new Container(
      height: 150.0,
      padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
    );
  }

}