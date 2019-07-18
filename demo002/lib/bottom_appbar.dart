import 'package:flutter/material.dart';
import 'each_view.dart';



class BottomNavigationWidget extends StatefulWidget {
  final Widget child;

  BottomNavigationWidget({Key key, this.child}) : super(key: key);

  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.red;

  int _currentIndex = 0;

  List<Widget> pageList = List();

  @override
  void initState(){
    pageList
         ..add(EachView('home'))
         ..add(EachView('email'))
         ..add(EachView('phone'))
         ..add(EachView('airplay'));
         super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: _BottomNavigationColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            return EachView('New Page');
          }));
        },
        tooltip: '打开相机',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pageList[_currentIndex],
      bottomNavigationBar:BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: (){
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.email),
              onPressed: (){
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.phone),
              onPressed: (){
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.airplay),
              onPressed: (){
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
// bottomNavigationBar: BottomNavigationBar(
//   items:[
//    BottomNavigationBarItem(
//      icon:Icon(
//        Icons.home,
//        color:_BottomNavigationColor,
//      ),
//      title:Text(
//        'home',
//        style: TextStyle(color: _BottomNavigationColor),
//      )
//    ),
//    BottomNavigationBarItem(
//      icon:Icon(
//        Icons.email,
//        color:_BottomNavigationColor,
//      ),
//        title:Text(
//          'email',
//          style: TextStyle(color: _BottomNavigationColor),
//        )
//    ),
//    BottomNavigationBarItem(
//      icon:Icon(
//        Icons.pages,
//        color:_BottomNavigationColor,
//      ),
//        title:Text(
//          'pages',
//          style: TextStyle(color: _BottomNavigationColor),
//        )
//    ),
//    BottomNavigationBarItem(
//      icon:Icon(
//        Icons.airplay,
//        color:_BottomNavigationColor,
//      ),
//        title:Text(
//          'airplay',
//          style: TextStyle(color: _BottomNavigationColor),
//        )
//    ),
//   ],
//   currentIndex: _currentIndex,
//   onTap: (int index){
//     setState(() {
//           _currentIndex = index;
//         });
//   },
// ),
    );
  }
}