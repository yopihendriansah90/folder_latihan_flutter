import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({super.key});

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  List<dynamic> keranjang = [];
  Future<void> ambidatakeranjang() async {
    final prefs = await SharedPreferences.getInstance();
    final String? datakeranjang = prefs.getString('keranjang');
    if (datakeranjang != null) {
      setState(() {
        keranjang = jsonDecode(datakeranjang);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    ambidatakeranjang();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kerangjan belanja"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text(
            "Jumlah item ${keranjang.length}\n Total : ${keranjang.fold(0, (sum, item) => sum + (item['harga'] as int))} ",
          ),
          Expanded(
            child: ListView.builder(
              itemCount: keranjang.length,
              itemBuilder: (context, index) {
                final item = keranjang[index];
                return ListTile(
                  leading: Image(image: NetworkImage(item['img'])),
                  title: Text(item['nama']),
                  subtitle: Text("Rp ${item['harga'].toString()}"),
                  trailing: IconButton(
                    onPressed: () async{
                      final prefs= await SharedPreferences.getInstance();
                      setState(() {
                        
                      keranjang.remove(keranjang[index]); // hapus item berdasarkan index
                      });
                      await prefs.setString('keranjang', jsonEncode(keranjang));
                      // await ambidatakeranjang();
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
