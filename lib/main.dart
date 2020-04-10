import 'package:flutter/material.dart';
import 'package:ninghui_flutter/pages/BottomNavigationBarPage.dart';
import 'package:ninghui_flutter/pages/DrawerPage.dart';
import 'package:ninghui_flutter/pages/PhotoListView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primaryColor: const Color(0xFFF16554),
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('NINGHUI'),
//          leading: IconButton(
//              icon: Icon(Icons.list),
//              tooltip: 'Navigation',
//              onPressed: () => debugPrint("Navigaton button is pressed")),
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
            Icon(Icons.change_history,size: 128.0,color: Colors.black12,),
            Icon(Icons.directions_bike,size:128.0,color: Colors.black12,),
            PhotoListView(),
            Icon(Icons.change_history,size: 128.0,color: Colors.black12,),
            Icon(Icons.directions_bike,size:128.0,color: Colors.black12,),
            PhotoListView(),
            Icon(Icons.change_history,size: 128.0,color: Colors.black12,),
            Icon(Icons.directions_bike,size:128.0,color: Colors.black12,),
            PhotoListView(),
          ],
        ),
        drawer: DrawerPage(),
        bottomNavigationBar: BottomNavigationBarPage()
      ),
    );
  }
}
