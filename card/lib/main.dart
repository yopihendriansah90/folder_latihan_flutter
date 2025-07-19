import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Card & parsing", home: new HalSatu()));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue.shade300,
        foregroundColor: Colors.white,
        title: new Text("Card dan Parsing"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            new CardSaya(icon: Icons.home, teks: "Home", warnaIcon: Colors.blue),
            new CardSaya(icon: Icons.settings, teks: "Pengaturan", warnaIcon: Colors.green),
            new CardSaya(icon: Icons.info, teks: "Tentang", warnaIcon: Colors.orange),
            new CardSaya(icon: Icons.contact_mail, teks: "Kontak", warnaIcon: Colors.red),
            new CardSaya(icon: Icons.help, teks: "Bantuan", warnaIcon: Colors.purple),
            new CardSaya(icon: Icons.exit_to_app, teks: "Keluar", warnaIcon: Colors.brown),
            new CardSaya(icon: Icons.star, teks: "Favorit", warnaIcon: Colors.yellow),
            new CardSaya(icon: Icons.share, teks: "Bagikan", warnaIcon: Colors.cyan),
        
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
CardSaya({required this.icon, required this.teks, required this.warnaIcon});
final IconData icon;
final String teks;
final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(icon, size: 50.0, color: warnaIcon),
            new Text(teks, style: new TextStyle(fontSize: 20.0)),
          ],
        ),
      ),
    );
  }
}
