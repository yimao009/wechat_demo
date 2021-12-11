import 'package:flutter/material.dart';
import 'package:wechatdemo/pages/const.dart';

class DiscoverChildPage extends StatelessWidget {
  const DiscoverChildPage({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWeChatThemeColor,
        title: Text(title != null ? title! : '无'),
      ),
      body: Center(
        child: Text(title != null ? title! : '无'),
      ),
    );
  }
}
