import 'package:flutter/material.dart';
import 'package:ninghui_flutter/model/post.dart';

class DataTablePage extends StatefulWidget {
  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  int _sortColumnIndex;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DataTableDemo'),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              DataTable(
                sortColumnIndex: _sortColumnIndex,
                sortAscending: _sortAscending,
                // onSelectAll: (bool value) {},
                columns: [
                  DataColumn(
                    label: Text('Title'),
                    onSort: (int index, bool ascending) {
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = ascending;
                        postList.sort((a, b) {
                          if (!ascending) {
                            final c = a;
                            a = b;
                            b = c;
                          }
                          return a.title.length.compareTo(b.title.length);
                        });
                      });
                    },
                  ),
                  DataColumn(
                    label: Text('Author'),
                  ),
                  DataColumn(
                    label: Text('Image'),
                  ),
                ],
                rows: postList.map((post) {
                  return DataRow(
                      selected: post.selected,
                      onSelectChanged: (bool value) {
                        setState(() {
                          if (post.selected != value) {
                            post.selected = value;
                          }
                        });
                      },
                      cells: [
                        DataCell(Text(post.title)),
                        DataCell(Text(post.author)),
                        DataCell(Image.network(post.imageUrl)),
                      ]
                  );
                }).toList(),
              ),
            ],
          ),
        )
    );
  }
}
