import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "ListView", home: new Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber[900],
        title: new Text("ListView"),
      ),

      body: new ListView(
        children: <Widget>[
          new ListTutorial(
            gambar:
                'https://e7.pngegg.com/pngimages/185/655/png-clipart-logo-php-computer-icons-symbol-miscellaneous-emblem.png',
            judul: 'bahasa PHP',
          ),
          new ListTutorial(
            gambar:
                'https://e7.pngegg.com/pngimages/465/779/png-clipart-blue-and-white-c-logo-the-c-programming-language-computer-programming-computer-icons-programmer-blue-angle-thumbnail.png',
            judul: 'bahasa da',
          ),
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  ListTutorial({required this.gambar, required this.judul});
  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Padding(padding: EdgeInsets.all(20.0)),
            new Image(image: NetworkImage(gambar), width: 80.0),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: new Center(
                child: Column(
                  children: <Widget>[
                    new Text(judul, style: new TextStyle(fontSize: 30.0)),
                    new Text (" ini adalah deksripsi tutorial ... ", style: TextStyle(fontSize: 15.0))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
