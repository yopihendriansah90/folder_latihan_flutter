import 'package:flutter/material.dart';


// void main(){
//   runApp(MyApp()); // mulai dari sini
// }
class Hari1 extends StatelessWidget {
  // const Hari1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halo dunis"),
        ),
        body: Text("hallo")
      ),
    );
  }
}