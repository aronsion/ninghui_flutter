import 'package:flutter/material.dart';
import 'package:ninghui_flutter/pages/home/tabPage/LayoutPage.dart';

class MaterialPage extends StatefulWidget {
  @override
  _MaterialPageState createState() => _MaterialPageState();
}

class _MaterialPageState extends State<MaterialPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListItem(title: 'Stepper', page: LayoutPage()),
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>page)
        ),
      },
    );
  }
}