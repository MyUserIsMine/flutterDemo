import 'package:flutter/material.dart';

class WarpDemo extends StatefulWidget {
  final Widget child;

  WarpDemo({Key key, this.child}) : super(key: key);

  _WarpDemoState createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {

  List<Widget> list;
void initState() { 
  super.initState();
  list = List<Widget>()..add(buildAddButton());
}

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Warp Demo'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height/2,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 10.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton (){
    return GestureDetector(
      onTap: (){
        if (list.length < 9) {
          setState(() {
             list.insert(list.length-1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.red,
          child: Icon(Icons.add),
        ),
      )
    );
  }


  Widget buildPhoto(){
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.yellow,
        child: Center(
          child: Text('照片'),
        )
      ),
    );
  }

}