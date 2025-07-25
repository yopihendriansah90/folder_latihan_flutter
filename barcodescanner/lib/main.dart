import 'package:flutter/material.dart';
import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data2="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: ()async{
          await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AiBarcodeScanner(
            onDispose: (){},
            hideGalleryButton: false,
            controller: MobileScannerController(
              detectionSpeed: DetectionSpeed.noDuplicates,
            ),
            onDetect: (BarcodeCapture capture){
              final String? scannedValue = capture.barcodes.first.rawValue;
              setState(() {
                data2 = scannedValue.toString();
              });
              Navigator.of(context).pop();

              // coding ini untuk berpindah ke screen2 dan sekaligus mengirmkan data ke sana 
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2(data: scannedValue)));
            },
          )
          )
          );
        }, child: Text("Scann Barcode ")),
       Text("ini Hasilnya : $data2") 
      
          ],
        ),
    ),
    );
  }
}


class Screen2 extends StatefulWidget {
  const Screen2({super.key, this.data});
  final String? data;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
        
      ),
      body: Center(
        child: Text("Ini hasilnya : ${widget.data}"),
      ) ,
    );
  
  }
}