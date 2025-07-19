import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Text("RADIO", style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold) ),
            new Padding(padding: new EdgeInsets.all(20.0)),
            // new Icon(Icons.radio, size: 100.0, color: Colors.blue),
            new Image(image: new NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScuA5R81NBaVrmjENRCItbGZB7VzwHKHEQug&s"),width: 200.0,)
          ],
        ),
      )
    );
  }
}