import 'package:flutter/material.dart';
import 'package:latihandasarflutter7hari/hari1.dart';


void main(){
  runApp(MyApp());
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
      title: "latihan flutte dalam 7 hari",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Daftar belajar"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          
        ),
        body: Padding(padding: EdgeInsets.all(16),
        child: Column(
      
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Hari1()));
            }, child: Text("Hari1",style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),)
          ],
        ),),
      ),
    );
  }
}