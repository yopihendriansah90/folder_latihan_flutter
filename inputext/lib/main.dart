import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(title: "Input Text, Alert dan Snackbar", home: new Home()),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String teks = "";

  TextEditingController controllerInput = new TextEditingController();
  TextEditingController controllerAlert = new TextEditingController();
  TextEditingController controllerSnekbar = new TextEditingController();
  
void _snackbar(String str){
  if (str.isEmpty) return;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(str, style: TextStyle(fontSize: 20.0)),
    )
  );
}
  
  void _alertdialog(String str) {
    if (str.isEmpty) return;

    AlertDialog alertDialog = new AlertDialog(
      content: new Text(str, style: new TextStyle(fontSize: 20.0)),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
          child: Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Input Text, Alert dan Snackbar"),
        backgroundColor: Colors.purple,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerInput,
              decoration: new InputDecoration(hintText: "tuliskan disini"),
              onSubmitted: (String str) {
                setState(() {
                  teks = str + '\n' + teks;
                  controllerInput.text = "";
                });
              },
              
            ),
            new Text(teks, style: new TextStyle(fontSize: 20.0)),
     
            new TextField(
              controller: controllerAlert,
              decoration: new InputDecoration(hintText: "tuliskan untuk alert"),
              onSubmitted: (String str) {
                _alertdialog(str);
                controllerAlert.text="";
              },
            ),
            new TextField(
              controller: controllerSnekbar,
              decoration: new InputDecoration(hintText: "tuliskan untuk snekbar"),
              onSubmitted: (String str) {
                _snackbar(str);
                controllerSnekbar.text="";
              },
            ),
                 ],
        ),
      ),
    );
  }
}
