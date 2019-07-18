import 'package:flutter/material.dart';

class AirPlay extends StatelessWidget {
  final Widget child;

  AirPlay({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Airplay')),
      body: Center(child:Text('Airplay')),
    );
  }
}