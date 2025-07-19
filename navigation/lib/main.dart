import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Halsatu(), title: "navigasi",routes: <String,WidgetBuilder>{
    '/halsatu': (BuildContext context) => new Halsatu(),
    '/haldua': (BuildContext context) => new Haldua(),
  },));
}

class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Music")),
      body: new Center(
        child: new IconButton(icon: new Icon(Icons.headset, size: 50.0), 
        onPressed: () { 
          Navigator.pushNamed(context, '/haldua' );
         },),
      ),
    );
  }
}


class Haldua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Speaker")),
      body: new Center(
        child: new IconButton(icon: new Icon(Icons.speaker, size: 50.0,color: Colors.red,), 
        onPressed: () { 
          Navigator.pushNamed(context, '/halsatu' );
         },),
      ),
    );
  }
}
