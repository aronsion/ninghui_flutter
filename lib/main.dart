import 'package:flutter/material.dart';
import 'package:ninghui_flutter/PostData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridViewBuilde(),
    );
  }
}

class GridViewBuilde extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GridViewStateBuilder();
  }
}

class _GridViewStateBuilder extends State<GridViewBuilde>{

  Widget _gridViewItembuilder(BuildContext context,int index){
    return Container(
      child: Image.network(
        postList[index].imageUrl,
        fit: BoxFit.cover
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0
        ),
        itemBuilder: _gridViewItembuilder,
      itemCount: postList.length,
    );
  }
}