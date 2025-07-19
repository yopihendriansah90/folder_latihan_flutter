import 'package:belajar_login/inti/custome.dart';
import 'package:flutter/material.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

bool visiblepassword = true;

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
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
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: NetworkImage(
                            "https://img.freepik.com/premium-vector/mobile-login-concept-illustration_114360-83.jpg",
                          ),
                          height: 200,
                          width: 200,
                        ),
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome back!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 30,
                                color: const Color.fromARGB(255, 1, 88, 80),
                              ),
                            ),
                            Text(
                              "Let's login for explore continues",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        cursorColor: Colors.teal,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          fontSize: Custome.ukuranfont,
                          color: Custome.colorutama,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          hintText: "enter your email",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Custome.colordasar,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Custome.colordasar,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Custome.colorutama,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        cursorColor: Colors.teal,
                        keyboardType: TextInputType.text,
                        obscureText: visiblepassword,
                        style: TextStyle(
                          fontSize: Custome.ukuranfont,
                          color: Custome.colorutama,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key),
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
                            ),
                          ),
                          hintText: "enter your password",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Custome.colordasar,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Custome.colordasar,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Custome.colorutama,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot password",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 15),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,

                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            foregroundColor: WidgetStatePropertyAll(
                              Colors.white,
                            ),
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.teal,
                            ),
                          ),
                          child: Text(
                            "Sign In",
                            style: TextStyle(fontSize: 20),
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
                              style: TextStyle(color: Colors.grey),
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: OutlinedButton(
  
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.teal)
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
                                "Login Gogole",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
