import 'package:flutter/material.dart';
import 'warp_demo.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Demo',
      theme: ThemeData.light(),
      home: WarpDemo(),
    );
  }
}