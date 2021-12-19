import 'package:flutter/material.dart';
import 'package:wechatdemo/pages/discover/discover_child_page.dart';
import 'package:wechatdemo/pages/friends/friends_data.dart';

import '../const.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  final _headerData = [
    Friends(imageUrl: 'images/新的朋友.png', name: '新的朋友'),
    Friends(imageUrl: 'images/群聊.png', name: '群聊'),
    Friends(imageUrl: 'images/标签.png', name: '标签'),
    Friends(imageUrl: 'images/公众号.png', name: '公众号'),
  ];

  Widget _itemForRow(BuildContext context, int index) {
    if (index < _headerData.length) {
      return _FriendCell(
          imageAssets: _headerData[index].imageUrl,
          name: _headerData[index].name);
    }
    return _FriendCell(
      imageUrl: datas[index - 4].imageUrl,
      name: datas[index - 4].name,
      groupTitle: datas[index - 4].indexLetter,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWeChatThemeColor,
        title: Text('通讯录'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DiscoverChildPage(title: '添加朋友');
              }));
            },
            child: Container(
              margin: EdgeInsets.all(5),
              child: Image(
                image: AssetImage('images/icon_friends_add.png'),
                width: 25,
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: kWeChatThemeColor,
        child: ListView.builder(
          itemCount: datas.length + _headerData.length,
          itemBuilder: _itemForRow,
        ),
      ),
    );
  }
}

class Friends {
  final String imageUrl;
  final String name;
  const Friends({required this.imageUrl, required this.name});
}

class _FriendCell extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? groupTitle;
  final String? imageAssets;
  const _FriendCell(
      {Key? key, this.imageUrl, this.name, this.groupTitle, this.imageAssets})
      : super(key: key);

  ImageProvider imageProvider() {
    if (imageUrl != null) {
      return NetworkImage(imageUrl ?? '');
    }
    return AssetImage(imageAssets ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (groupTitle != null)
          Container(
            height: 30,
            color: Color.fromRGBO(1, 1, 1, 0.0),
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              groupTitle!,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
        Container(
          color: Colors.white,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  image: DecorationImage(
                    image: imageProvider(),
                  ),
                ),
              ),
              Container(
                child: Text(
                  name ?? '',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 0.5,
          color: kWeChatThemeColor,
          child: Row(
            children: [
              Container(
                width: 50,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}
