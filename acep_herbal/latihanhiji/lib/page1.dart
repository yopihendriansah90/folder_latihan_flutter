import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latihanhiji/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Page1", style: TextStyle(color: Colors.white)),
        // leading: TextButton(onPressed: (){
        //   Navigator.of(context).pop();
        // }, child: Text("Back")),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 20,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(color: Colors.red),
                child: Text("Ini Containter"),
              ),
              SizedBox(height: 20.0),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Ini Containter"),
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(color: Colors.green),
                    child: Text("container 3"),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(color: Colors.deepOrange),
                    child: Text("container 3"),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(color: Colors.purple),
                    child: Text("container 3"),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      width: 80.0,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.red,
                      child: Text("Slide 1"),
                    ),
                    Container(
                      width: 80.0,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.red,
                      child: Text("Slide 2"),
                    ),
                    Container(
                      width: 80.0,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.red,
                      child: Text("Slide 3"),
                    ),
                    Container(
                      width: 80.0,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.red,
                      child: Text("Slide 4"),
                    ),
                    Container(
                      width: 80.0,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.red,
                      child: Text("Slide 5"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Page2(datapage1: "data perbuahan ") ),);
                },
                child: Text(
                  "Tombol",
                  style: TextStyle(color: Colors.redAccent),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.purple),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
