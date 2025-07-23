import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: CounterPage(),
    );

    }

}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void increment(){
    setState(() {
      count++;
    });
  }

  void decrement(){
    setState(() {
      count--;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COunter with seState')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Angka saat ini:",style: TextStyle(fontSize: 20),),
            Text('$count',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: decrement, child: Icon(Icons.remove)),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: increment, child: Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
    );
  }
}