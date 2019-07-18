import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  final Widget child;
  final int pageType;

  MyHomePage({Key key, this.child, this.pageType}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin{
  List array = [];
  int _counter = 0;
   
  @override
  bool get wantKeepAlive => true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 100; i++) {
        array.add(getRow(i));
    }
  }

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: ListView.separated(
        itemCount: array.length,
        
        itemBuilder: (BuildContext context,int position){
          return getRow(position);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 0.5,
            color: Colors.grey,
          );
        },
      ),
      
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: '长按',
      //   child: Icon(Icons.add),
      // ),
    );
  }



Widget getRow(int i){
  return GestureDetector(
    child: Padding(
      padding: EdgeInsets.all(10),
      
      child: Text('Row $i'),
    ),
    onTap: (){
      setState((){
        array.add(getRow(array.length + 1));
        print('row $i');
      });
    },
  );
}



}