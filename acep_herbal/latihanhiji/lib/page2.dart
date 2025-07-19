import 'package:flutter/material.dart';
import 'package:latihanhiji/main.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key, required this.datapage1});
  final String datapage1;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Page2"),

        // automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          children: [
            Text(widget.datapage1),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => MyApp(),
                  ),
                  (route) => false,
                );
              },
              child: Text(
                "Back to Home",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red[400]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
