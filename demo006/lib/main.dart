import 'package:flutter/material.dart';
import 'ExpansionTileDemo.dart';
import 'Expansionlist.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);
 
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: '可开闭的cell',
      theme: ThemeData.dark(),
      home: ExpansionListDemo(),
    );
  }
}
