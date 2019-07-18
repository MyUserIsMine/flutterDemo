import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 TextEditingController typeController = TextEditingController();
  String showText = '欢迎光临';
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: Text('天上人间'),),
      body: SingleChildScrollView(
        child:  Container(
        height: 1000,
        child: Column(
          children: <Widget>[
            TextField(
              controller: typeController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                labelText: '美女类型',
                helperText: '请输入你喜欢的类型',
              ),
              autofocus: false,
            ),
            RaisedButton(
              onPressed: _choiceAction,
              child: Text('选择完毕'),
            ),
            Text(
              showText,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
      )
    );
  }


Future getHttps(String TypeText)async{
  try{
    Response response;
    var data = {'name':TypeText};
    response = await Dio().get(
      'https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian',
      queryParameters: data
    );
    return response.data;
  }catch(e){
      return print(e);
  }
}


void _choiceAction(){
  print('开始选择……');
  if(typeController.text.toString() == ''){
      showDialog(
        context: context,
        builder: (context)=>AlertDialog(title: Text('美女类型不能为空'),)
      );
  }else{
    getHttps(typeController.text.toString()).then((val){
      setState(() {
        showText = val['data']['name'].toString();
      });
    });
  }
}

}

// void getHttp() async{
//   try{
//     Response response;
//     var data = {'name':'你好'};
//     response = await Dio().get(
//       'https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian?name=美女'
//     );
//     return print(response);
//   }catch(e){
//     return print(e);
//   }
// }