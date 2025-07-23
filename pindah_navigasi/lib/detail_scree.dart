import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.name, required this.age});
  final String name;
  final int age;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late String name;
  late int age;

  @override
  void initState(){
    super.initState();
    name = widget.name;
    age= widget.age;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nama : $name "),
            Text("Umur : $age Tahun"),
          ],
        ),
      ),
    );
  }
}

class Testingpage extends StatefulWidget {
  const Testingpage({super.key});

  @override
  State<Testingpage> createState() => _TestingpageState();
}
setState(){
  print("halo");
}

class _TestingpageState extends State<Testingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("asdfasd"),
      
    );

  }
}