import 'package:flutter/material.dart';
import 'package:ninghui_flutter/pages/main/BottomNavigationBarPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarPage(),
      theme: ThemeData(
          primaryColor: const Color(0xFFF16554),
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}