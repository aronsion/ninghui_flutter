import 'package:flutter/material.dart';

class FindPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('发现'),
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        child: Center(
          child: Text('发现'),
        ),
      ),
    );
  }
}