import 'package:flutter/material.dart';
import 'package:wechatdemo/pages/discover/discover_child_page.dart';

class DiscoverCell extends StatefulWidget {
  final String title;
  final String? subTitle;
  final String iconName;
  final String? subImageName;
  const DiscoverCell(
      {Key? key,
      required this.title,
      this.subTitle,
      required this.iconName,
      this.subImageName})
      : super(key: key);

  @override
  _DiscoverCellState createState() => _DiscoverCellState();
}

class _DiscoverCellState extends State<DiscoverCell> {
  Color _currentColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DiscoverChildPage(
            title: widget.title,
          );
        }));
      },
      onTapDown: (details) {
        setState(() {
          _currentColor = Colors.grey;
        });
      },
      onTapCancel: () {
        setState(() {
          _currentColor = Colors.white;
        });
      },
      child: Container(
        height: 54,
        color: _currentColor,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // left
            Container(
                child: Row(
              children: [
                Image(
                  image: AssetImage(widget.iconName),
                  width: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(widget.title),
              ],
            )),
            // right
            Container(
              child: Row(
                children: [
                  Text(widget.subTitle != null ? widget.subTitle! : ''),
                  widget.subImageName != null
                      ? Image(
                          image: AssetImage(widget.subImageName!),
                          width: 12,
                        )
                      : Container(),
                  Image(
                    image: AssetImage('images/icon_right.png'),
                    width: 15,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
