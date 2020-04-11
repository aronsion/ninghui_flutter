import 'package:flutter/material.dart';
import 'package:ninghui_flutter/pages/home/tabPage/BasicPage.dart';
import '../main/DrawerPage.dart';
import '../main/PhotoListView.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('NINGHUI'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint("Search button is pressed"))
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.white,
              indicatorColor: const Color(0xFFF16554),
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(text: '首页',),
                Tab(text: '数码',),
                Tab(text: '手机',),
                Tab(text: '图书',),
                Tab(text: '生鲜',),
                Tab(text: '美妆',),
                Tab(text: '电脑办公',),
                Tab(text: '食品',),
                Tab(text: '家装',),
                Tab(text: '运动',)
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              PhotoListView(),
              BasicPage(),
              Center(
                child: Text('手机',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
              Center(
                child: Text('图书',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
              Center(
                child: Text('生鲜',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
              Center(
                child: Text('美妆',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
              Center(
                child: Text('电脑办公',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
              Center(
                child: Text('食品',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
              Center(
                child: Text('家装',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
              Center(
                child: Text('运动',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
            ],
          ),
        drawer: DrawerPage(),
      ),
    );;
  }

}