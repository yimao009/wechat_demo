import 'package:flutter/material.dart';

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

  // Widget _itemForRow(BuildContext context, int index) {
  //   if (index < _headerData.length) {
  //     return _FriendCell(
  //         imageAssets: _headerData[index].imageUrl,
  //         name: _headerData[index].name);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '通讯录',
          style: TextStyle(fontSize: 18, color: Colors.red),
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
  final String imageUrl;
  final String name;
  final String groupTitle;
  final String imageAssets;
  const _FriendCell(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.groupTitle,
      required this.imageAssets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
        children: [
          Container(),
          Container(),
        ],
      ),
    );
  }
}
