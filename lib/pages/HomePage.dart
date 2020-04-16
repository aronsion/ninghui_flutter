import 'package:flutter/material.dart';
import '../model/PostData.dart';

class HomePage extends StatelessWidget {

  Widget _gridViewItembuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(postList[index].imageUrl, fit: BoxFit.cover),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0
      ),
      itemBuilder: _gridViewItembuilder,
      itemCount: postList.length,
    );
  }
}
