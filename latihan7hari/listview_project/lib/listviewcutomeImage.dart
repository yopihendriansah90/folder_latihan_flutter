import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:listview_project/keranjang.dart';
import 'package:shared_preferences/shared_preferences.dart';

class customeimaeglist extends StatefulWidget {
  const customeimaeglist({super.key});

  @override
  State<customeimaeglist> createState() => _customeimaeglistState();
}

class _customeimaeglistState extends State<customeimaeglist> {
  final List<Map<String, dynamic>> daftarProduk = [
    {
      'nama': 'kaos polos1',
      'harga': 1000,
      'img':
          'https://media.karousell.com/media/photos/products/2023/11/21/baju_kaos_oblong_sendiri_pende_1700539639_5c3cd9b4_progressive.jpg',
    },
    {
      'nama': 'kaos polos2',
      'harga': 2000,
      'img':
          'https://media.karousell.com/media/photos/products/2023/11/21/baju_kaos_oblong_sendiri_pende_1700539639_5c3cd9b4_progressive.jpg',
    },
    {
      'nama': 'kaos polos3',
      'harga': 3000,
      'img':
          'https://media.karousell.com/media/photos/products/2023/11/21/baju_kaos_oblong_sendiri_pende_1700539639_5c3cd9b4_progressive.jpg',
    },
    {
      'nama': 'kaos polos4',
      'harga': 4000,
      'img':
          'https://media.karousell.com/media/photos/products/2023/11/21/baju_kaos_oblong_sendiri_pende_1700539639_5c3cd9b4_progressive.jpg',
    },
    {
      'nama': 'kaos polos5',
      'harga': 5000,
      'img':
          'https://media.karousell.com/media/photos/products/2023/11/21/baju_kaos_oblong_sendiri_pende_1700539639_5c3cd9b4_progressive.jpg',
    },
    {
      'nama': 'kaos polos6',
      'harga': 6000,
      'img':
          'https://media.karousell.com/media/photos/products/2023/11/21/baju_kaos_oblong_sendiri_pende_1700539639_5c3cd9b4_progressive.jpg',
    },
    {
      'nama': 'kaos polos7',
      'harga': 7000,
      'img':
          'https://media.karousell.com/media/photos/products/2023/11/21/baju_kaos_oblong_sendiri_pende_1700539639_5c3cd9b4_progressive.jpg',
    },
  ];

  Future<void> tambahKeKeranjang(Map<String, dynamic> produk) async {
    final prefs = await SharedPreferences.getInstance();
    final String? datakeranjang = prefs.getString('keranjang');
    List<dynamic> keranjang = [];
    if (datakeranjang != null) {
      keranjang = jsonDecode(datakeranjang);
    }
    keranjang.add(produk);
    await prefs.setString('keranjang', jsonEncode(keranjang));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.blue ,duration: Duration(seconds: 1),content: Text("${produk['nama']} ditambahkan kedalam keranjang"),));
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Cutome Image"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () async{
                
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>KeranjangPage()));
            
          }, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.builder(
        itemCount: daftarProduk.length,
        itemBuilder: (context, index) {
          final produk = daftarProduk[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.amber,
                  child: Image(image: NetworkImage(produk['img'])),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            produk['nama'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Rp ${produk['harga']}"),
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            tambahKeKeranjang(produk);
                            print(produk['nama']);
                          },
                          child: Text("Tambah"),
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.blue,
                            ),
                            foregroundColor: WidgetStatePropertyAll(
                              Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
