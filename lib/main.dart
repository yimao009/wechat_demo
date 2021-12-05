import 'package:flutter/material.dart';
import 'package:wechatdemo/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(1, 0, 0, 0.0),
          splashColor: Color.fromRGBO(1, 0, 0, 0.0)),
      home: RootPage(),
    );
  }
}
