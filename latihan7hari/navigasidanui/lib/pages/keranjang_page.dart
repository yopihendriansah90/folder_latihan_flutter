import 'package:flutter/material.dart';

class KeranjangPage extends StatefulWidget {
  // const KeranjangPage({super.key});
  final List<Map<String, dynamic>> keranjang;
  const KeranjangPage({Key? key, required this.keranjang}) : super(key: key);

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  late List<Map<String, dynamic>> _keranjang;
  @override
  void initState() {
    super.initState();
    _keranjang = List.from(widget.keranjang);
  }

  int getTotalharga() {
    return _keranjang.fold(0, (total, item) => total + (item['harga'] as int));
  }

  void _showCheckoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Konfirmasi Checkout"),
          content: Text("Total belanja: Rp ${getTotalharga()}.\nLanjtkan?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // tutup dialog
              },
              child: Text("Batal"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _keranjang.clear(); // kosongkan keranjang
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Checkout Berhasil")),
                
                );
              },
              child: Text("Ya, Checkout"),
              
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("keranjanga")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _keranjang.length,
              itemBuilder: (context, index) {
                final item = _keranjang[index];
                return ListTile(
                  title: Text(item['nama']),
                  subtitle: Text('Rp ${item['harga']}'),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        _keranjang.removeAt(index);
                      });
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsetsGeometry.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Total: ', style: TextStyle(fontSize: 18)),
                Text(
                  'Rp ${getTotalharga()}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              _keranjang.isEmpty ? null : _showCheckoutDialog();
            },
            child: Text("Checkout"),
          ),
        ],
      ),
    );
  }
}
