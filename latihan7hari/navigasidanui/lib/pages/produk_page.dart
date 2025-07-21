import 'package:flutter/material.dart';
import 'keranjang_page.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {

  // List produk
  final List<Map<String, dynamic>> daftarProduk=[
    {"nama": "Beras", "harga": 12000},
    {"nama": "Gula", "harga": 10000},
    {"nama": "Minyak Goreng", "harga": 15000},
    {"nama": "Indomie", "harga": 3000},
    {"nama": "Telur", "harga": 22000},
  ];

  //List Keranjang
  List<Map<String, dynamic>> keranjang=[];


  // fungsi ke keranjang
  void tambahKeKeranjang(Map<String, dynamic> produk){
    setState(() {
      keranjang.add(produk);

    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text("'${produk['nama']} ditambahkan ker kerjanjang"),
      duration: Duration(seconds: 1),
      ),
    );
  }

  void bukaKeranjang(){
    Navigator.push(
      context, MaterialPageRoute(builder: (_)=>KeranjangPage(keranjang:keranjang),
      ),
    );
  }

  //bangun user interface disini
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk'),
        actions: [
          IconButton(onPressed: (bukaKeranjang), icon: Icon(Icons.shopping_cart),),
        ],
      ),
      body: ListView.builder(
        itemCount: daftarProduk.length,
        itemBuilder: (context, index){
          final produk = daftarProduk[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: ListTile(
              title: Text(produk['nama']),
              subtitle: Text('Rp ${produk['harga']}'),
              trailing: IconButton(onPressed: ()=>tambahKeKeranjang(produk), icon: Icon(Icons.add_shopping_cart)),
            ),
          );
        },
      ),
    );

  }
}