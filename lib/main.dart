import 'package:flutter/material.dart';
import 'package:ninghui_flutter/model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
    );
  }
}

class Home extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(postList[index].imageUrl),
          SizedBox(height: 16.0,),
          Text(
            postList[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            postList[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0,)
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NINGHUI'),
        elevation: 0.0, //阴影属性
      ),
      body: ListView.builder(
        itemCount: postList.length,
          itemBuilder: _listItemBuilder
      ),
    );
  }
}