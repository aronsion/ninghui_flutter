import 'package:flutter/material.dart';
import 'package:ninghui_flutter/model/post.dart';
import 'package:ninghui_flutter/pages/home/detail/PostShowPage.dart';

class PhotoListView extends StatelessWidget {

  Widget _listItemBuild(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(postList[index].imageUrl,fit: BoxFit.cover,),
              ),
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
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> PostShowPages(post:postList[index])
                  ));
                },
              ),
            ),
          )
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