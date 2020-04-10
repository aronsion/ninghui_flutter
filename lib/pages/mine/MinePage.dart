import 'package:flutter/material.dart';

class MinePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        child: Center(
          child: Text('我的'),
        ),
      ),
    );
  }
}