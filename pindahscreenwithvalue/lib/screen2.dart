import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key, required this.data});
  final String data;
  

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Center(
        child: Text(widget.data), // untuk mengambil data dari
      ),
    );
  }
}