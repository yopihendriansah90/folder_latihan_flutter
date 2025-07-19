import 'package:belajar_login/Alltask.dart';
import 'package:belajar_login/Inprogress.dart';
import 'package:belajar_login/Profile.dart';
import 'package:belajar_login/Todo.dart';
import 'package:belajar_login/inti/custome.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Custome.colordasar,
        appBar: AppBar(
          title: Text("My Task"),
          backgroundColor: Custome.colordasar,
          foregroundColor: Colors.black,
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {
                  print("tombol edit ditekan");
                },
                icon: Icon(Icons.search_sharp),
              ),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {
                  print("tombol edit ditekan");
                },
                icon: Icon(Icons.notifications_outlined),
              ),
            ),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
              isScrollable: true,
              labelStyle: TextStyle(color: Colors.white),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,
              
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "All Task"),
              Tab(text: "To do"),
              Tab(text: "In progress"),
                Tab(text: "Done"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Alltask(),
            Todo(),
            Inprogress(),
            Center(child: Text("Done"),)
          ],
        ),
      ),
    );
  }
}
