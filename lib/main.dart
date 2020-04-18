import 'package:flutter/material.dart';
import 'package:ninghui_flutter/ViewPage.dart';
import 'package:ninghui_flutter/pages/ChatPage.dart';
import 'package:ninghui_flutter/pages/HomePage.dart';
import 'package:ninghui_flutter/pages/MyPage.dart';
import 'package:ninghui_flutter/pages/ShoppingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '淘宝网',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
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

  String title = '首页';


  Widget _currentBody = HomePage();

  void _currentTap(int index) {
    switch (index) {
      case 0:
        _currentBody = HomePage();
        title = '首页';
        break;
      case 1:
        _currentBody = ViewPages();
        title = '微淘';
        break;
      case 2:
        _currentBody = ChatPage();
        title = '消息';
        break;
      case 3:
        _currentBody = ShoppingPage();
        title = '购物车';
        break;
      case 4:
        _currentBody = MyPage();
        title = '我的淘宝';
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
        title: Text(title),
        elevation: 2.0,
      ),
      body: _currentBody,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: Colors.deepOrange,
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
