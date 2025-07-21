import 'package:flutter/material.dart';
import 'produk_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toko kasir"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selamat data di Toko kasir",style: TextStyle(fontSize: 18),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_)=>ProdukPage()),
              );
            }, child:Text("Lihat Produk"),
             ),
            
          ],
        ),
      ),
    );
}
}