import 'package:flutter/material.dart';
import 'package:ninghui_flutter/ViewPage.dart';
import 'package:ninghui_flutter/pages/ChatPage.dart';
import 'package:ninghui_flutter/pages/HomePage.dart';

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

class GridViewBuilde extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GridViewStateBuilder();
  }
}

class _GridViewStateBuilder extends State<GridViewBuilde> {
  int _currentIndex = 0;

  Widget _currentBody = HomePage();

  void _currentTap(int index) {
    switch (index) {
      case 0:
        _currentBody = HomePage();
        break;
      case 1:
        _currentBody = ViewPages();
        break;
      case 2:
        _currentBody = ChatPage();
        break;
      case 3:
        _currentBody = HomePage();
        break;
      case 4:
        _currentBody = HomePage();
        break;
    }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('照片墙'),
        elevation: 2.0,
      ),
      body: _currentBody,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: const Color(0xffff678f),
        unselectedItemColor: const Color(0xff666666),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('微淘'), icon: Icon(Icons.list)),
          BottomNavigationBarItem(title: Text('消息'), icon: Icon(Icons.chat)),
          BottomNavigationBarItem(
              title: Text('购物车'), icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(
              title: Text('我的淘宝'), icon: Icon(Icons.person)),
        ],
        onTap: _currentTap,
      ),
    );
  }
}
