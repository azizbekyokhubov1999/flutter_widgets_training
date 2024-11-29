import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.deepPurple[400],
          ),
          Container(
            height: 50,
            color: Colors.deepPurple[300],
          ),
          Container(
            height: 50,
            color: Colors.deepPurple[200],
          ),
          Container(
            height: 50,
            color: Colors.deepPurple[100],
          ),
        ],
      ),
    );
  }
}
