import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/email.dart';
import 'pages/pages.dart';
import 'pages/airplay.dart';



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
         ..add(HomeScreen())
         ..add(EmailScreen())
         ..add(PagesScreen())
         ..add(AirPlay());
         super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        tooltip: '打开相机',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: pageList[_currentIndex],
bottomNavigationBar: BottomNavigationBar(
  items:[
   BottomNavigationBarItem(
     icon:Icon(
       Icons.home,
       color:_BottomNavigationColor,
     ),
     title:Text(
       'home',
       style: TextStyle(color: _BottomNavigationColor),
     )
   ),
   BottomNavigationBarItem(
     icon:Icon(
       Icons.email,
       color:_BottomNavigationColor,
     ),
       title:Text(
         'email',
         style: TextStyle(color: _BottomNavigationColor),
       )
   ),
   BottomNavigationBarItem(
     icon:Icon(
       Icons.pages,
       color:_BottomNavigationColor,
     ),
       title:Text(
         'pages',
         style: TextStyle(color: _BottomNavigationColor),
       )
   ),
   BottomNavigationBarItem(
     icon:Icon(
       Icons.airplay,
       color:_BottomNavigationColor,
     ),
       title:Text(
         'airplay',
         style: TextStyle(color: _BottomNavigationColor),
       )
   ),
  ],
  currentIndex: _currentIndex,
  onTap: (int index){
    setState(() {
          _currentIndex = index;
        });
  },
),
    );
  }
}