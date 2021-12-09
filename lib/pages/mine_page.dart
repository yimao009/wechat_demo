import 'package:flutter/material.dart';
import 'package:wechatdemo/pages/discover/discover_cell.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(220, 220, 220, 1),
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                children: [
                  _buildHead(context),
                  SizedBox(height: 10),
                  DiscoverCell(title: '支付', iconName: 'images/微信 支付.png'),
                  SizedBox(height: 10),
                  DiscoverCell(title: '收藏', iconName: 'images/微信收藏.png'),
                  SizedBox(height: 10),
                  DiscoverCell(title: '卡包', iconName: 'images/微信卡包.png'),
                  SizedBox(height: 10),
                  DiscoverCell(title: '相册', iconName: 'images/微信相册.png'),
                  SizedBox(height: 10),
                  DiscoverCell(title: '表情', iconName: 'images/微信表情.png'),
                  SizedBox(height: 10),
                  DiscoverCell(title: '设置', iconName: 'images/微信设置.png'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Container(
            height: 25,
            margin: EdgeInsets.only(right: 10, top: 40),
            color: Color.fromRGBO(0, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image(image: AssetImage('images/相机.png'))],
            ),
          ),

          // Positioned(
          //   right: 10,
          //   top: 35,
          //   child: Image(image: AssetImage('images/相机.png')),
          // ),
        ],
      ),
    );
  }

  Widget _buildHead(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(top: 100, bottom: 20),
        // padding: EdgeInsets.all(10),
        // color: Colors.yellow,
        child: Container(
          margin: EdgeInsets.only(left: 30),
          // padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Hank.png'),
                    fit: BoxFit.cover, // 填充
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  // color: Colors.red,
                ),
              ), // 头像
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
                width: MediaQuery.of(context).size.width - 95,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hank',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ), // 名称
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'BJSC7788',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Image(
                            image: AssetImage('images/icon_right.png'),
                            width: 15,
                          )
                        ],
                      ),
                    ), // 微信号
                  ],
                ),
              ), // 右边的部分
            ],
          ),
        ),
      ),
    );
  }
}
