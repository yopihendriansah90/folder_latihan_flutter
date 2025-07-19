import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: List.generate(30, (index){
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Card ke-${index+1}"),
            subtitle: Text("Ini adalah card nomor ${index+1}"),
            onTap: () {
              showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Pesan"),
                    content: Text("Halo"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("OK"))
                    ],
                  );
              });
              print("nomor ${index+1}");
            },
          ),
        );
      }),
    ),
    );
  }
}