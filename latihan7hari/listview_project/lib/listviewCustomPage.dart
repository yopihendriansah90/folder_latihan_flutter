import 'package:flutter/material.dart';

class Listviewcustompage extends StatefulWidget {
  const Listviewcustompage({super.key});

  @override
  State<Listviewcustompage> createState() => _ListviewcustompageState();
}

class _ListviewcustompageState extends State<Listviewcustompage> {
  final List<String> produk = [
    "Kaso Polos",
    "Haos hijau",
    "Baju kemeja",
    "Celana",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // mmebuat app bar
        title: Text("ListView Custome"), // membuat title
        backgroundColor: Colors.blue, // setting background color
        foregroundColor: Colors.white, // settting foreground color
      ),
      body: ListView.builder(
        // membuat listview
        itemCount: produk
            .length, // memberi tau ke sistem bawah harus mengulang sampai akhir yaitu sejumlah produk.length
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.grey[300],
                  child: Center(child: Text('Img')),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            produk[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Harga: Rp ${(index + 1 * 50000)}'),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Tambah"),
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
