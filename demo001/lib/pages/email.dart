import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  final Widget child;

  EmailScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('email')),
      body: Center(child:Text('email')),
    );
  }
}