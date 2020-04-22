import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool _isCheckBoxSelected = true;
  bool _isCheckSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxPage'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _isCheckBoxSelected,
              onChanged: (value) {
                setState(() {
                  _isCheckBoxSelected = value;
                });
              },
              title: Text('Checkbox Item A'),
              subtitle: Text('Checkbox Description'),
              secondary: Icon(Icons.bookmark),
              selected: _isCheckBoxSelected,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                    value: _isCheckSelected,
                    onChanged: (value) {
                      setState(() {
                        _isCheckSelected = value;
                      });
                    },
                  activeColor: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
