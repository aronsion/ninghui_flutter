import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {

  bool _switchItemA = false;
  bool _switchItem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchPage'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value){
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('Switch Item A'),
              subtitle: Text('Switch description'),
              secondary: Icon(_switchItemA ? Icons.visibility:Icons.visibility_off),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_switchItem?'😁' : '😐',style: TextStyle(fontSize: 32.0),),
                Switch(
                  value: _switchItem,
                  onChanged: (value){
                    setState(() {
                      _switchItem = value;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
