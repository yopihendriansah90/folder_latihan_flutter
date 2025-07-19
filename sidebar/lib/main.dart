import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Sidebar", home: new Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});



  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
String gambar1="https://i.pinimg.com/736x/af/f0/da/aff0da8991ec03a2704381abd5e8a57f.jpg";
String gambar2="https://www.biografiku.com/wp-content/uploads/2012/06/bondan_dan_feat_2_black-20100922-024-budi.jpg";
String backkup="";

///baru sampai sini doang belum di coba lagi 

  void gantiuser(){
this.setState(() {
  backkup=gambar1;
  gambar1=gambar2;
  gambar2=backkup;
   
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Demo Sidebar (Drawer)"),
        backgroundColor: Colors.red[700],
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Yopi Hendriansah"),
              accountEmail: Text("yopi@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  gambar1,
                ),
              ),

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://firdausartikel.com/wp-content/uploads/2020/12/edit-background-foto.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              otherAccountsPictures: [
                GestureDetector(
                  onTap:()=>gantiuser(),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      gambar2,
                    ),
                  ),
                ),
              ],
            ),
            ListTile(title: Text("Setting"), trailing: Icon(Icons.settings)),
            ListTile(title: Text("Close"), trailing: Icon(Icons.close)),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
