import 'package:flutter/material.dart';
import 'package:ninghui_flutter/pages/home/tabPage/AlertDialogPage.dart';
import 'package:ninghui_flutter/pages/home/tabPage/BottomSheetPage.dart';
import 'package:ninghui_flutter/pages/home/tabPage/CardPage.dart';
import 'package:ninghui_flutter/pages/home/tabPage/ChipPage.dart';
import 'package:ninghui_flutter/pages/home/tabPage/DataTablePage.dart';
import 'package:ninghui_flutter/pages/home/tabPage/ExpansionPanelPage.dart';
import 'package:ninghui_flutter/pages/home/tabPage/LayoutPage.dart';
import 'package:ninghui_flutter/pages/home/tabPage/PaginatedDataTablePage.dart';
import 'package:ninghui_flutter/pages/home/tabPage/SnackBarPage.dart';
import 'package:ninghui_flutter/pages/home/tabPage/StepperPage.dart';

class MaterialPage extends StatefulWidget {
  @override
  _MaterialPageState createState() => _MaterialPageState();
}

class _MaterialPageState extends State<MaterialPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListItem(title: 'Stepper', page: StepperPage()),
        ListItem(title: 'Card',page: CardPage(),),
        ListItem(title: 'PaginatedDataTable',page: PaginatedDataTablePage(),),
        ListItem(title: 'DataTable',page: DataTablePage(),),
        ListItem(title: 'Chip',page: ChipPage(),),
        ListItem(title: 'Layout',page: LayoutPage(),),
        ListItem(title: 'ExpansionPanel',page: ExpansionPanelPage(),),
        ListItem(title: 'SnackBar',page: SnackBarPage(),),
        ListItem(title: 'BottomSheet',page: BottomSheetPage(),),
        ListItem(title: 'AlertDialog',page: AlertDialogPage(),),
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
      leading: Icon(Icons.map),
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>page)
        ),
      },
    );
  }
}
