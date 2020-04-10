import 'package:flutter/material.dart';
import 'package:ninghui_flutter/LoginPage.dart';
import 'package:ninghui_flutter/model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
    );
  }
}

class Horizontal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础列表'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.lightBlue,
            ),
            Container(
              width: 160.0,
              color: Colors.lightBlue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
              child: Column(
                children: <Widget>[
                  Text('水平',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36.0),),
                  Text('列表',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36.0),),
                  Icon(Icons.alarm)
                ],
              ),
            ),
            Container(
              width: 160.0,
              color: Colors.amberAccent,
            ),
            Container(
              width: 160.0,
              color: Colors.cyan,
            ),
            Container(
              width: 160.0,
              color: Colors.pinkAccent,
            ),
          ],
        ),
      )
    );
  }
}

class GridViewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final titlew ='网格列表';
    return Scaffold(
      appBar: AppBar(
        title: Text(titlew),

      ),
      body: GridView.count(
        crossAxisCount: 3,
        primary: true,
        padding: EdgeInsets.all(8.0),
        crossAxisSpacing: 10.0,
        children: <Widget>[
          Image.network(postList[0].imageUrl),
          Image.network(postList[1].imageUrl),
          Image.network(postList[2].imageUrl),
          Image.network(postList[3].imageUrl),
          Image.network(postList[4].imageUrl),
          Image.network(postList[5].imageUrl),
          Image.network(postList[6].imageUrl),
          Image.network(postList[7].imageUrl),
          Image.network(postList[8].imageUrl),
          Image.network(postList[0].imageUrl),
          Image.network(postList[1].imageUrl),
          Image.network(postList[2].imageUrl),
          Image.network(postList[3].imageUrl),
          Image.network(postList[4].imageUrl),
          Image.network(postList[5].imageUrl),
          Image.network(postList[6].imageUrl),
          Image.network(postList[7].imageUrl),
          Image.network(postList[8].imageUrl),
          Image.network(postList[0].imageUrl),
          Image.network(postList[1].imageUrl),
          Image.network(postList[2].imageUrl),
          Image.network(postList[3].imageUrl),
          Image.network(postList[4].imageUrl),
          Image.network(postList[5].imageUrl),
          Image.network(postList[6].imageUrl),
          Image.network(postList[7].imageUrl),
          Image.network(postList[8].imageUrl),
          Image.network(postList[0].imageUrl),
          Image.network(postList[1].imageUrl),
          Image.network(postList[2].imageUrl),
          Image.network(postList[3].imageUrl),
          Image.network(postList[4].imageUrl),
          Image.network(postList[5].imageUrl),
          Image.network(postList[6].imageUrl),
          Image.network(postList[7].imageUrl),
          Image.network(postList[8].imageUrl),
        ],
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