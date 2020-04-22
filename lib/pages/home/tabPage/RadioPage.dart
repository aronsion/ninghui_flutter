import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int _isRadio = 0;
  int _isRadioA = 0;

  void _handleRadioValuechange(int value) {
    setState(() {
      _isRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radiopage'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue:$_isRadio'),
            SizedBox(
              height: 32.0,
            ),
            RadioListTile(
              value: 0,
              groupValue: _isRadio,
              onChanged: _handleRadioValuechange,
              title: Text('Options A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_1),
              selected: _isRadio == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _isRadio,
              onChanged: _handleRadioValuechange,
              title: Text('Options B'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_2),
              selected: _isRadio == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _isRadioA,
                  onChanged: (value) {
                    setState(() {
                      _isRadioA = value;
                    });
                  },
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 1,
                  groupValue: _isRadioA,
                  onChanged: (value){
                    setState(() {
                      _isRadioA = value;
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
