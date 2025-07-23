import 'package:flutter/material.dart';

void main(){
  runApp(cons ChecklistApp());

}
class ChecklistApp extends StatelessWidget {
  const ChecklistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checklist Harian',
      home: CheklistPage(),
    );
  }
}

class CheklistPage extends StatefulWidget {
  const CheklistPage({super.key});

  @override
  State<CheklistPage> createState() => _CheklistPageState();
}

class _CheklistPageState extends State<CheklistPage> {

  // List aktivitas harian
  final List<String> _tasks = [
    "Bangun tidur",
    "Minum air putih",
    "Olahraga",
    "Baca buku",
    "Berjemur di pagi hari",
  ];

  // status tiap aktivitas (selesai atau belum )
  final List<bool> _siChecked = [false,false,false,false,false,];

//   void _toggleTask(int index){
//     setStaste((){
// _siChecked[index]=!_siChecked[index];
//     });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}