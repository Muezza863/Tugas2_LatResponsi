import 'package:flutter/material.dart';

import 'dummy_menu.dart';

class menuPage extends StatelessWidget {
  final String usname;

  const menuPage({super.key, required this.usname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Page"),
        backgroundColor: Colors.purpleAccent.withOpacity(0.6),
      ),
      body: Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),
            itemCount: foodMenuList.length,
            itemBuilder: (context, index) {
              final FoodMenu menu = foodMenuList[index];
              return Card(
                child: Column(
                  children: [
                    Image.network(menu.imageUrls[0]),
                    Text(menu.name),
                    Text(menu.category),
                    Text(menu.price),

                  ],
                ),
              );
            }
        ),
      )
    );
  }
}
