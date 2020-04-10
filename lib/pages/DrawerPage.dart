
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DrawerStatePage();
  }
}

class _DrawerStatePage extends State<DrawerPage>{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('NINGHUI',style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('arons.hui@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://resources.ninghao.org/images/free_hugs.jpg'),
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF16554),
              image: DecorationImage(
                image: NetworkImage("https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(const Color(0xFFF16554), BlendMode.hardLight)
              )
            ),
          ),
          ListTile(
            title: Text('Messages',textAlign: TextAlign.left,),
            leading: Icon(Icons.message,color: Colors.black12,size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite',textAlign: TextAlign.left,),
            leading: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings',textAlign: TextAlign.left,),
            leading: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}