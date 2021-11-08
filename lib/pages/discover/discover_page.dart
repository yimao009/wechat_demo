import 'package:flutter/material.dart';
import 'package:wechatdemo/pages/const.dart';
import 'package:wechatdemo/pages/discover/discover_cell.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWeChatThemeColor,
        title: Text("发现"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        color: kWeChatThemeColor,
        child: ListView(
          children: [
            // 放各种cell
            DiscoverCell(title: "朋友圈", iconName: "images/朋友圈.png"),
            SizedBox(
              height: 10,
            ),
            DiscoverCell(title: "扫一扫", iconName: "images/扫一扫2.png"),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 0.5,
                  color: Colors.white,
                )
              ],
            ),
            DiscoverCell(title: "摇一摇", iconName: "images/摇一摇.png"),
            SizedBox(
              height: 10,
            ),
            DiscoverCell(title: "看一看", iconName: "images/看一看icon.png"),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 0.5,
                  color: Colors.white,
                )
              ],
            ),
            DiscoverCell(title: "搜一搜", iconName: "images/搜一搜 2.png"),
            SizedBox(
              height: 10,
            ),
            DiscoverCell(title: "附近", iconName: "images/附近的人icon.png"),
            SizedBox(
              height: 10,
            ),
            DiscoverCell(
              title: "购物",
              iconName: "images/购物.png",
              subTitle: '双11限时特价',
              subImageName: 'images/badge.png',
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 0.5,
                  color: Colors.white,
                )
              ],
            ),
            DiscoverCell(title: "游戏", iconName: "images/游戏.png"),
            SizedBox(
              height: 10,
            ),
            DiscoverCell(title: "小程序", iconName: "images/小程序.png"),
          ],
        ),
      ),
    );
  }
}
