import 'package:flutter/material.dart';
import 'package:listview_project/listviewCustomPage.dart';
import 'package:listview_project/listviewPage.dart';
import 'package:listview_project/listviewcutomeImage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "testing",
      home:Pagehome(),
    );
  }
}


class Pagehome extends StatefulWidget {
  const Pagehome({super.key});

  @override
  State<Pagehome> createState() => _PagehomeState();
}

class _PagehomeState extends State<Pagehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        ),
        body: Row(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Listviewpage()));
            }, child: Text("Pindah")),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Listviewcustompage()));
            }, child: Text("Listvew Custome")),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>customeimaeglist()));
            }, child: Text("listview Image"))
          ],
        ),
    );
  }
}
