import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarStatePage();
  }
}

class _BottomNavigationBarStatePage extends State<BottomNavigationBarPage> {

  int _currentIndex = 0;

  void _onTabHandle(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<BottomNavigationBarItem> bottomItem = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('首页')
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.apps),
        title: Text('分类')
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        title: Text('发现')
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        title: Text('购物车')
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('我的')
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTabHandle,
      fixedColor: const Color(0xFFF16554),
      type: BottomNavigationBarType.fixed,
      items:bottomItem,
    );
  }
}