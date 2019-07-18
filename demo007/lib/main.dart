import 'package:flutter/material.dart';
import 'keepAlive.dart';



void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget child;

  

  MyApp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '状态保持',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: KeepAliveDemo(),
    );
  }
}


class KeepAliveDemo extends StatefulWidget {
  final Widget child;

  KeepAliveDemo({Key key, this.child}) : super(key: key);

  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin{
  
  TabController _controller;
  
  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 3,vsync: this);
  }
  
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('大'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.ac_unit)),
            Tab(icon: Icon(Icons.ac_unit)),
            Tab(icon: Icon(Icons.ac_unit))
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          MyHomePage()
        ],
      ),
    );
  }
}