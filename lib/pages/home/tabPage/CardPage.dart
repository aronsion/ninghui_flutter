import 'package:flutter/material.dart';
import 'package:ninghui_flutter/model/post.dart';


class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardPage'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: postList.map((post){
            return Card(
              child: Column(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16/9,
                      child: ClipRRect(
                        child: Image.network(post.imageUrl,fit: BoxFit.cover,),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0)
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(post.imageUrl),
                      ),
                      title: Text(post.title),
                      subtitle: Text(post.author),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(post.description,maxLines: 2,overflow: TextOverflow.ellipsis,),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: Text('Like'.toUpperCase()),
                            onPressed: (){},
                          ),
                          FlatButton(
                            child: Text('Read'.toUpperCase()),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16.0,)
                  ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
