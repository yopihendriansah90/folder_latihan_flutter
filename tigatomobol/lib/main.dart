import 'package:flutter/material.dart';

void main(){
  runApp(MyButtonApp());
}

class MyButtonApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Tomobol Vertikal",
      home: Scaffold(
        appBar: AppBar(title: Text('Tiga Tombol Vertikal')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  print('Tombol 1 ditekan');
                },
                child: Text('Tombol 1'),
              ),


              SizedBox(height: 16),
              ElevatedButton.icon(
               onPressed: (){
                print('Aku Suka!!!');
               },
               icon: Icon(Icons.thumb_up),
               label: Text("Suka"),
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
               ),
               ),

              
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: (){
                  print('tombol 3 ditekan');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12), 
                  ),
                  elevation: 4,
                ),
                child: Text('tombol 3'),
              ),



              SizedBox(height: 16),
              OutlinedButton(
                onPressed:(){
                  print('halo gaes');
                },
                child: Text("Tombol lagi "),
              ),

              SizedBox(height: 16),
              OutlinedButton(
                onPressed:(){
                  print('halo lagi gaes');
                },
                child: Text("Tomobol 5"),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.blue),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12)),
                ),
             
            ],
          ),
        ),
      ),
      );
  }
}