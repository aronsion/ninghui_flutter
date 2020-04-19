import 'package:flutter/material.dart';

class ChipPage extends StatefulWidget {
  @override
  _ChipPageState createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {

  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon'
  ];

  String _action = 'Nothing';
  List<String> _selected = [];
  String _choice = 'Lemon';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipPage'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('wanghui'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('辉'),
                  ),
                ),
                Chip(
                    label: Text('wanghui'),
                    avatar: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://resources.ninghao.org/images/candy-shop.jpg'
                      ),
                    ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: (){},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return Chip(
                      label: Text(tag),
                      onDeleted: (){
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip:${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return FilterChip(
                        label: Text(tag),
                        onSelected: (value){
                          setState(() {
                            if(_selected.contains(tag)){
                              _selected.remove(tag);
                            }else{
                              _selected.add(tag);
                            }
                          });
                        }
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip:${_choice}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.black,
                      selected: _choice ==tag,
                      onSelected: (value){
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings_backup_restore),
        onPressed: (){
          setState(() {
            _tags = ['Apple','Banana','Lemon'];
            _selected = [];
            _choice = 'Lemon';
          });
        },
      ),
    );
  }
}
