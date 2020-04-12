import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninghui_flutter/model/post.dart';

class ViewPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ViewPageBuilder();
  }
}

class _ViewPageBuilder extends State<ViewPages> {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            postList[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                postList[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                postList[index].author,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
        itemCount: postList.length, itemBuilder: _pageItemBuilder);
  }
}

class _ViewStatePages extends State<ViewPages> {
  @override
  Widget build(BuildContext context) {
    return PageView(
//      pageSnapping: false,
//    reverse: true,
//      scrollDirection: Axis.vertical,
      onPageChanged: (currentpage) => debugPrint('Page is $currentpage'),
      controller: PageController(
        initialPage: 1,
        keepPage: false,
//        viewportFraction: 0.85
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "ONE",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.green[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "TWO",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.pink[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "FOUR",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
