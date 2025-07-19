import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Text("SMARTPHONE", style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold) ),
            new Padding(padding: new EdgeInsets.all(20.0)),
            // new Icon(Icons.smartphone, size: 100.0, color: Colors.blue),
            new Image(image: new NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqbISPpn3uJa_hkWZuXUYA3cYxi_uS5rY4xw&s"),width: 300.0,)
          ],
        ),
      )
    );
  }
}