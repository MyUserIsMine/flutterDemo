import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  final Widget child;

  ExpansionTileDemo({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('可折叠组件'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('ExpansionTile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white10,
          children: <Widget>[
            ListTile(
              title: Text('list title'),
              subtitle: Text('subtitle'),
            )
          ],
          initiallyExpanded: true,//是否打开，默认是闭合的
        ),
      ),
    );
  }
}