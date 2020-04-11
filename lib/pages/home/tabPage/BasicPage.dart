import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContainerBoxPage();
  }
}

class _ContainerBoxPage extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://resources.ninghao.org/images/say-hello-to-barry.jpg"),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.indigoAccent[400].withOpacity(0.5),
                  BlendMode.hardLight))),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(
              Icons.accessibility,
              size: 32.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 16.0),
                      color: Color.fromRGBO(16, 20, 188, 1.0),
                      blurRadius: 25.0,
                      spreadRadius: -9.0)
                ],
                shape: BoxShape.circle,
//                gradient: RadialGradient(
//                  colors: [
//                    Color.fromRGBO(7, 102, 255, 1.0),
//                    Color.fromRGBO(3, 28, 128, 1.0)
//                  ],
//                )
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          )
        ],
      ),
    );
  }
}

class RichTextPage extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'arons.hui@',
          style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w200),
          children: [
            TextSpan(
                text: '.gmail.com',
                style:
                    TextStyle(fontSize: 17.0, color: const Color(0xfff16554)))
          ]),
    );
  }
}

class _BasicStatePage extends State<BasicPage> {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      "《$_title》--- $_author君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
