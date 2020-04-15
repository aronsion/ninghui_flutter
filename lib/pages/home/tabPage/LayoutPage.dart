import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('layout'),
          elevation: 0.0,
        ),
        body: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconBadge(Icons.account_balance),
                IconBadge(Icons.add_a_photo),
                IconBadge(Icons.add_shopping_cart)
              ],
            ),
          ),
        )
    );
  }
}


class IconBadge extends StatelessWidget {
  final IconData iconData;
  final double size;

  IconBadge(this.iconData, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        iconData,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
