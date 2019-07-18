import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  final Widget child;

  MemberPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          new Image.asset('images/ad.jpeg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
          ),
          titleSection(),
          buttonSection(),
          textSection()
        ],
      ),
      
    );
  }
//标题部分
  Widget titleSection(){
  return Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        new Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: new Text('hkdfjhadskjfha',style: new TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              new Text('dasfjasklfjla',style:new TextStyle(color:Colors.grey[500]))
            ],
          ),
        ),
        new Icon(
          Icons.star,
          color:Colors.red[500],
        ),
        new Text('34'),
      ],
    ),
  );
}
//图标部分

Widget buttonSection(){
  return Container(
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
      ],
    ),
  );
}


Widget buildButtonColumn(IconData icon, String label){
      return GestureDetector(
        onTap: (){
          
        },
        child:  new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon,color:Colors.blue),
          new Container(
            margin: const EdgeInsets.only(top: 8),
            child: new Text(label,style:new TextStyle(
              fontSize:12,
              fontWeight:FontWeight.w400,
              color:Colors.blue
              
            ),),
          )
        ],
      ),
      );
}
Widget textSection(){
  return Container(
    padding: const EdgeInsets.all(32),
    child: new Text(
      
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );
}


}


