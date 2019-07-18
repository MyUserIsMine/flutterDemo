import 'package:flutter/material.dart';

class ExpansionListDemo extends StatefulWidget {
  final Widget child;

  ExpansionListDemo({Key key, this.child}) : super(key: key);

  _ExpansionListDemoState createState() => _ExpansionListDemoState();
}

class _ExpansionListDemoState extends State<ExpansionListDemo> {

  List<int> mList;
  List<ExpansionStateBean> expandStateList;
  
  _ExpansionListDemoState(){
    mList = new List();
    expandStateList =new List();
    for (var i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(ExpansionStateBean(i,false));
    }
  }

  _setCurrentIndex(int index,isExpand){
    setState(() {
      expandStateList.forEach((item){
        if (item.index ==index) {
          item.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('可折叠列表'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index,bol){
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index){
            return ExpansionPanel(
              headerBuilder: (context,isExpanded){
                return ListTile(
                  title: Text('this is No.$index'),
                );
              },
              body: ListTile(
                title: Text('expansion no.$index'),
              ),
              isExpanded: expandStateList[index].isOpen,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class  ExpansionStateBean {
  var isOpen;
  var index;
  ExpansionStateBean(this.index,this.isOpen);
}