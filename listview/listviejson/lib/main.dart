import 'package:flutter/material.dart';


void main(){
  runApp(new MaterialApp(
    title: "List View",
    home: new Home(data: new List<String>.generate(300,(i)=>"Ini data ke $i"),),
));
}


class Home extends StatelessWidget{

   final List<String> data;
  Home({ required this.data, Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: new AppBar(title: new Text("List View"), backgroundColor: Colors.blue, foregroundColor: Colors.white,),
      body: new Container(
        child: new ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
            return new ListTile(
              leading: new Icon(Icons.widgets),
              title: new Text("${data[index]}"),
              
            );
          }
        ),
      )
    );
  }
}