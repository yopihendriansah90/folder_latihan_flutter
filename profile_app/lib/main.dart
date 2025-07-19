import 'package:flutter/material.dart';

void main (){
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Prfile Pribadi',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: ProfilePage(),
      );
  }
}

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Profile Saya")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage('https://pict.sindonews.net/dyn/850/pena/news/2022/01/14/166/656633/foto-selfienya-laku-hingga-miliaran-rupiah-di-nft-ghozali-everyday-buat-bayar-utang-ibu-saya-qaw.jpeg'),
            ),
        
        
          SizedBox(height: 20),
          Text(
            'Johan tea',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(

            'Flutter Dev',
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>DetailPage()));
            },
            child: Text('Lihat Detail'),
          )
        ],
        ),
      ),
    );
  }
}



class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Detail Profile")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: Johan Tea',style: TextStyle(fontSize: 20)),
            Text("Profesi: Flutter Developer", style: TextStyle(fontSize: 20)),
            Text("Email: Johateas@gmail.com", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);             },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
        );
  }
}