import 'package:belajar_login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}


final password1Controller = TextEditingController();
final password2Controller = TextEditingController();
bool forceErrorText = false;
class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

      body: DoubleBackToCloseApp(
        snackBar: SnackBar(content: Text("Double tap untuk keluar")),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Flexible(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 180,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: NetworkImage(
                            "https://lh5.googleusercontent.com/proxy/w40O7-HXyvjCnpEno7he3vDzZEHPAvUqZb5Kd3sQHTB6SwMrrHPbGZC0zW8RvpDdQiSdEwRv5cgvq7dyj0m5Io_9Wfd3njgIsTX6PpXk-1G7_GH_d7kGW2fcJ47EoTi7lQ",
                          ),
                          height: 200,
                          width: 200,
                        ),
                      ),
                      Text(
                        "Let's Get Started",
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 1, 88, 80),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,

                        child: Text(
                          "create an account to get all featurs",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        cursorColor: Colors.teal,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 1, 88, 80),
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_2),
                          prefixIconColor: Colors.teal,
                          hintText: "enter your full name",
                          hintStyle: TextStyle(color: Colors.teal),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 236, 234, 234),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: const Color.fromARGB(255, 236, 234, 234),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        cursorColor: Colors.teal,
                        keyboardType: TextInputType.text,

                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 1, 88, 80),
                        ),
                        decoration: InputDecoration(
                       
                          prefixIcon: Icon(Icons.email),
                          prefixIconColor: Colors.teal,
                          filled: true,
                          hintText: "enter your email",
                          hintStyle: TextStyle(color: Colors.teal),
                          fillColor: const Color.fromARGB(255, 236, 234, 234),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: const Color.fromARGB(255, 236, 234, 234),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        controller: password1Controller,
                        cursorColor: Colors.teal,
                        keyboardType: TextInputType.text,

                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 1, 88, 80),
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key),
                          prefixIconColor: Colors.teal,
                          filled: true,
                          hintText: "password",
                          hintStyle: TextStyle(
                            color:  Colors.teal
                          ),
                          fillColor: const Color.fromARGB(255, 236, 234, 234),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: const Color.fromARGB(255, 236, 234, 234),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        
                        
                        controller: password2Controller,
                        cursorColor: Colors.teal,
                        keyboardType: TextInputType.text,

                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 1, 88, 80),
                        ),
                        decoration: InputDecoration(
                          errorText: forceErrorText ? "Input Password":null ,
                          prefixIcon: Icon(Icons.key),
                          prefixIconColor: Colors.teal,
                          filled: true,
                          hintText: "confirm password",
                          hintStyle: TextStyle(color: Colors.teal),
                          fillColor: const Color.fromARGB(255, 236, 234, 234),
                          enabledBorder: OutlineInputBorder(
                            
                            borderSide: BorderSide(
                              width: 1.5,
                              color: const Color.fromARGB(255, 236, 234, 234),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   SnackBar(content: Text("SIgn Up berhasil"),duration: Duration(seconds: 3),)

                            // );
                            if(password1Controller.text.isEmpty){
                              print("input password anda");
                              

                            }else if(password2Controller.text==""){
                              setState(() {
                                forceErrorText=true;
                              });
                              print("Input Konfirmasi Password");
                            }else if(password1Controller.text != password2Controller.text){
                              print("password keduanya salah");

                            }else{
                              print("Ok lanjut");
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.teal,
                            ),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "You can Connect with",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            side: WidgetStatePropertyAll(
                              BorderSide(color: Colors.teal, width: 2),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/800px-Google_%22G%22_logo.svg.png",
                                ),
                                height: 30,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Login Goole",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Alreadi have account?   "),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Loginpage(),
                                  ),
                                );
                              },

                              child: Text(
                                "Sign In",
                                style: TextStyle(color: Colors.teal),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
