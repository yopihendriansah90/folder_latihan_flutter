import 'package:flutter/material.dart';
import 'package:latihanhiji/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

bool visiblepassword = true;

final usernameController = TextEditingController();
final passwordController = TextEditingController();

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: usernameController,
                    cursorColor: Colors.green,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "input suername",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.green),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    cursorColor: Colors.green,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    obscureText:
                        visiblepassword, //merubah karakter menjadi di samaarkan untuk password
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visiblepassword = !visiblepassword;
                          });
                        },
                        icon: Icon(
                          visiblepassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black45,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "input password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.green),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () async {
                      if (usernameController.text == 'admin' &&
                          passwordController.text == 'password') {
                             final SharedPreferences prefs = await SharedPreferences.getInstance();
                             prefs.setString("user", usernameController.text);
                             prefs.setString("password", passwordController.text);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Login berhasil'),
                          duration: Duration(seconds: 3),)
                        );
                        Navigator.pushAndRemoveUntil<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) => MyHomePage(),
                          ),
                          (route) => false,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Login gagal'),
                          duration: Duration(seconds: 3),)
                        );
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.green),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
