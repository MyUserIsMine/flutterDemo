import 'package:flutter/material.dart';
import 'pages.dart';


void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter bottomNavigationBar",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: FirstPage(),
    );
  }
}