import 'package:flutter/material.dart';

class ClassifyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        child: Center(
          child: Text('分类'),
        ),
      ),
    );
  }
}