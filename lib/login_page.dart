import 'package:flutter/material.dart';

import 'dashboard_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usname = "";
  String pass = "";
  bool statusLogin = false;

Widget _usnameField (){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextFormField(
      onChanged: (value){
        usname = value;
      },
      decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(10)
              ),
          )
      ),
    ),
  );
}
  Widget _passField (){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        obscureText: true,
        onChanged: (value){
          pass = value;
        },
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(10)
              ),
            )
        ),
      ),
    );
  }

  void _checkLog () {
   if (usname == "admin" && pass == "123") {
     statusLogin = true;
     Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage(usname: usname)));
   }else {
     ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
       content: Text("Login Gagal"),
     )
     );
   }
   ;

  }

  Widget _buttonLog (){
  return Container(
    padding: EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 10),
    child: TextButton(onPressed: _checkLog,
        child: Text("Login", style: TextStyle(color: Colors.black),),
    ),
    color: Colors.green,
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.purpleAccent.withOpacity(0.6),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpeg"),
                fit: BoxFit.cover
              )
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withOpacity(0.7),
                  width: 4,
                ),
                borderRadius:BorderRadius.all(Radius.circular(40)),
                color: Colors.white.withOpacity(0.4)
              ),
              child: Column(
                children: [
                  Container(
                    height: 20,
                  ),
                  Text("Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _usnameField(),
                  _passField(),
                  _buttonLog()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
