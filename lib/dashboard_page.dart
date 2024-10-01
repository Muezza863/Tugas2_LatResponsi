import 'package:flutter/material.dart';

import 'menu_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key, required this.usname});
  final String usname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Page"),
          automaticallyImplyLeading: false,
        backgroundColor: Colors.purpleAccent.withOpacity(0.6),
      ),
      body: Column(
        children: [
          Text("Selamat datang $usname"),
          ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => menuPage(usname: usname,))); },
              child: Text("Menu")),
        ElevatedButton(
          style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.red),
          foregroundColor: WidgetStatePropertyAll(Colors.white)
          ),
          onPressed: (){
          Navigator.pop(context);
          },
          child: Text("Logout")
        )
        ],
      ),
    );
  }
}
