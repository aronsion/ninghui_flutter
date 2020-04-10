import 'package:flutter/material.dart';
import 'package:ninghui_flutter/pages/cart/ShoppingPage.dart';
import 'package:ninghui_flutter/pages/classify/ClassifyPage.dart';
import 'package:ninghui_flutter/pages/find/FindPage.dart';
import 'package:ninghui_flutter/pages/home/HomePage.dart';
import 'package:ninghui_flutter/pages/mine/MinePage.dart';
import 'package:ninghui_flutter/pages/main/DrawerPage.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarStatePage();
  }
}

class _BottomNavigationBarStatePage extends State<BottomNavigationBarPage> {
  int _currentIndex = 0;
  Widget _currertPage = HomePage();
  void _onTabHandle(int index) {
    switch (index) {
      case 0:
        _currertPage = HomePage();
        break;
      case 1:
        _currertPage = ClassifyPage();
        break;
      case 2:
        _currertPage = FindPage();
        break;
      case 3:
        _currertPage = ShoppingPage();
        break;
      case 4:
        _currertPage = MinePage();
        break;
    }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: _currertPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabHandle,
        fixedColor: const Color(0xFFF16554),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text('分类')),
          BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text('发现')),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('购物车')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的')),
        ],
      ),
      drawer: DrawerPage(),
    );
  }
}
