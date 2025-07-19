import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Text("KOMPUTER", style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold) ),
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Image.asset("img/komputer.jpeg", width:200.0),
          ],
        ),
      )
    );
  }
}