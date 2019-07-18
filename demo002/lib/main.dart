import 'package:flutter/material.dart';
import 'bottom_appbar.dart';


void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter bottomNavigationBar",
      theme: ThemeData.light(),
      home: BottomNavigationWidget()
    );
  }
}