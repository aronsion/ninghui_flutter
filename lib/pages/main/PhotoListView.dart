import 'package:flutter/material.dart';
import 'package:ninghui_flutter/model/post.dart';

class PhotoListView extends StatelessWidget {

  Widget _listItemBuild(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(postList[index].imageUrl),
          SizedBox(height: 16.0,),
          Text(
            postList[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            postList[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: postList.length,
        itemBuilder: _listItemBuild
    );
  }
}