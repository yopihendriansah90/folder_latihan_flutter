import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inprogress extends StatefulWidget {
  const Inprogress({super.key});

  @override
  State<Inprogress> createState() => _InprogressState();
}

class _InprogressState extends State<Inprogress> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: Text("Judul"),
                content: Text("Isi Pesan"),
                actions: [
                  CupertinoDialogAction(
                    child: Text("Ok"),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            );
          },
          child: Text('Show Dialog'),
        ),
        ElevatedButton(onPressed: () {
          showModalBottomSheet(context: context, builder: (context)=>Container(
            padding: EdgeInsets.all(30),
            child:Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child: Text("ini buttomsheet"),

            ),
          ));
        }, child: Text("Bottomsheet")),
        ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context)=>AlertDialog(
              title: Text("judul"),
              content: Text("isi pesan"),
              actions: [
                TextButton(onPressed: (){
                   Navigator.pop(context);
                }, child: Text("OK"))
              ],
            ));
        }, child: Text("Alert Dialog"))
      ],
    );
  }
}
