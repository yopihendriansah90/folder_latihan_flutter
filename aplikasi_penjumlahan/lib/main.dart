import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Penjualan Barang',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Bisa disesuaikan lagi jika ingin memengaruhi tema secara global
      ),
      home: const HomePage(), // Ini akan jadi halaman utama aplikasi
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        backgroundColor: Colors.green, // Warna AppBar diatur secara eksplisit
      ),
      body: ListView.builder(
        itemCount: 20, // Menggunakan perulangan 20 item
        itemBuilder: (context, index) {
          // Ambil produk berdasarkan index dengan operator modulo untuk perulangan data dummy
          final product = dummyProducts[index % dummyProducts.length];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: InkWell( // Membuat Card dapat diklik
              onTap: () {
                // Navigasi ke ProductDetailPage dan teruskan objek produk
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: product),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Image.network(
                      product.imageUrl,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Rp ${product.price.toStringAsFixed(0)}', // Format harga
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios, color: Colors.grey), // Ikon panah ke depan
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailPage extends StatefulWidget {
  final Product product; // Properti untuk menerima data produk

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  // Variabel untuk mengelola input jumlah dari TextField
  final TextEditingController _quantityController = TextEditingController();
  // Variabel untuk menyimpan dan menampilkan hasil total harga
  String _totalPrice = "0.00"; // Inisialisasi awal

  @override
  void dispose() {
    // PENTING: Buang controller saat widget tidak lagi digunakan
    // untuk mencegah kebocoran memori.
    _quantityController.dispose();
    super.dispose();
  }

  // Fungsi yang akan dipanggil saat tombol "Hitung Total Harga" ditekan
  void _calculateTotalPrice() {
    // setState() memberitahu Flutter bahwa state telah berubah dan UI perlu di-rebuild
    setState(() {
      try {
        // Ambil teks dari input dan ubah ke angka (double)
        double quantity = double.parse(_quantityController.text);
        // Akses harga produk dari widget ProductDetailPage melalui 'widget.product'
        double price = widget.product.price;
        double total = quantity * price;
        // Format total harga menjadi string dengan 2 angka di belakang koma
        _totalPrice = total.toStringAsFixed(2);
      } catch (e) {
        // Tangani jika input tidak valid (misal: bukan angka)
        _totalPrice = "Input tidak valid";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold untuk struktur dasar halaman
    return Scaffold(
      appBar: AppBar(
        // Judul AppBar menampilkan nama produk yang dipilih
        title: Text(widget.product.name),
        backgroundColor: Colors.green, // Warna AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding di sekitar konten
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri konten
          children: <Widget>[
            // Gambar Produk
            Center( // Pusatkan gambar
              child: Image.network(
                widget.product.imageUrl,
                height: 200, // Tinggi gambar
                fit: BoxFit.cover, // Cara gambar mengisi ruang
              ),
            ),
            const SizedBox(height: 20), // Spasi vertikal

            // Nama Produk
            Text(
              widget.product.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10), // Spasi vertikal

            // Harga Produk
            Text(
              'Harga: Rp ${widget.product.price.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 22, color: Colors.green),
            ),
            const SizedBox(height: 30), // Spasi vertikal

            // Input Jumlah Beli
            TextField(
              controller: _quantityController, // Hubungkan dengan controller
              keyboardType: TextInputType.number, // Tampilkan keyboard angka
              decoration: const InputDecoration(
                labelText: 'Jumlah Beli', // Label input field
                border: OutlineInputBorder(), // Border di sekitar input
              ),
            ),
            const SizedBox(height: 20), // Spasi vertikal

            // Tombol Hitung Total Harga
            Center( // Pusatkan tombol
              child: ElevatedButton(
                onPressed: _calculateTotalPrice, // Ketika ditekan, panggil fungsi perhitungan
                child: const Text('Hitung Total Harga', style: TextStyle(fontSize: 18)),
              ),
            ),
            const SizedBox(height: 30), // Spasi vertikal

            // Tampilan Hasil Total Harga
            Center( // Pusatkan teks hasil
              child: Text(
                'Total: Rp $_totalPrice', // Tampilkan hasil perhitungan
                style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Model data untuk produk
class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

// Data produk dummy (contoh)
final List<Product> dummyProducts = [
  const Product(
    name: 'Laptop Gaming',
    price: 15000000,
    imageUrl: 'https://static.retailworldvn.com/News/0/Laptop-Gaming-Terbaik1-845x442.jpg',
  ),
  const Product(
    name: 'Smartphone Terbaru',
    price: 8500000,
    imageUrl: 'https://static.retailworldvn.com/News/0/Laptop-Gaming-Terbaik1-845x442.jpg',
  ),
  const Product(
    name: 'Headphone Wireless',
    price: 1200000,
    imageUrl: 'https://static.retailworldvn.com/News/0/Laptop-Gaming-Terbaik1-845x442.jpg',
  ),
  const Product(
    name: 'Smartwatch',
    price: 2500000,
    imageUrl: 'https://static.retailworldvn.com/News/0/Laptop-Gaming-Terbaik1-845x442.jpg',
  ),
];