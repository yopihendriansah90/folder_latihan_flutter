import 'package:flutter/material.dart';

class Listviewpage extends StatefulWidget {
  const Listviewpage({super.key});

  @override
  State<Listviewpage> createState() => _ListviewpageState();
}

class _ListviewpageState extends State<Listviewpage> {
  final List<String> produk = [
    "Kaso Polos",
    "Haos hijau",
    "Baju kemeja",
    "Celana",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  // mmebuat app bar
        title: Text("ListView"), // membuat title
        backgroundColor: Colors.blue, // setting background color
        foregroundColor: Colors.white, // settting foreground color
      ),
      body: ListView.builder( // membuat listview 
        itemCount: produk.length, // memberi tau ke sistem bawah harus mengulang sampai akhir yaitu sejumlah produk.length
        itemBuilder: (context, index) { 
          return ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(produk[index]),
            onTap: () {
              print("Klik : ${produk[index]}");
            },
          );
        },
      ),
    );
  }
}
