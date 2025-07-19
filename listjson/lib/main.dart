import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


void main(){
  runApp(new MaterialApp(
    title: "List View Json",
    home: new Home(),
  ));
}
class Home extends StatefulWidget {


  @override
_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late List dataJSON = [];
  Future<String> ambildata() async{
    http.Response hasil = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      headers: {
        "Accept": "application/json"
      }
    );

    setState(() {
      dataJSON = json.decode(hasil.body);
    });
    return "Success";
  }

  @override
  void initState(){
    super.initState();
    this.ambildata();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Data json")),
  
      body: ListView.builder(
        itemCount: dataJSON.length,
        itemBuilder: (context, i) {
          
          return new Container(
            padding: EdgeInsets.all(10.0),
            child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
       
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                new Text( "No. ${i+1}"),
                new Text(dataJSON[i]['title'],style: TextStyle(fontSize: 20.0,color: Colors.blue),),
                new Text(dataJSON[i]['body'],style: TextStyle(fontSize: 16.0,color: Colors.black54))
                ],
              )
            ),
          ),
          );
          
          
        },
      ),
    );
  }

}