
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi nama pengguna",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        
      ),
      home: const NamaInputScreen(),
    );
  }
}



class NamaInputScreen extends StatefulWidget {
  const NamaInputScreen({super.key});

  @override
  State<NamaInputScreen> createState() => _NamaInputScreenState();
}

class _NamaInputScreenState extends State<NamaInputScreen> {

  final TextEditingController _nameController = TextEditingController(); // membuat controller untuk dihubungkan ke text
  String _savedName = '';
  @override
  void initState(){
    super.initState();
    _loadName();
  }
  // awalan script untuk memuat data dari SharedPrefernces
  Future<void> _loadName() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedName=prefs.getString('userName')??'belum ada nama';

    });
  }
  // akhiran script untuk memuat data dari SharedPreferences

// awalan untuk menyimpan data ke SharedPreferences
  Future<void> _saveName(String name)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', name);
    _loadName();
  }
// akhrian script untuk menyimpan data ke sharedpreferences

// awalan script untuk menghapus data dari SharedPreferences
  Future<void> _deleteName() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('userName');
    _loadName();
  }
// akhiran scrip tuntuk menghapus data dari SharedPreferences
  @override
  void dispose(){
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SImpan nama pengguna"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Padding(padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Nama Tersimpan : $_savedName",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Masukan nama anda",
              hintText: "Misal jojon",
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            if(_nameController.text.isNotEmpty){
              _saveName(_nameController.text);
              _nameController.clear();
            }else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("nama tidak boleh kosong")),
              );
            }
          }, child: Text("Simpan nama")
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            _deleteName();
            _nameController.clear();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Nama telah dihapus"),)
              );
            
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
           child: Text("Hapus nama")),
          
        ],
      ),
      ),
    );
}
}