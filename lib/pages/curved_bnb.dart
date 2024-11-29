import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyCurvedBNB extends StatefulWidget {
  const MyCurvedBNB({super.key});

  @override
  State<MyCurvedBNB> createState() => _MyCurvedBNBState();
}

class _MyCurvedBNBState extends State<MyCurvedBNB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.teal.shade200,
          color: Colors.teal.shade100,
          animationDuration: Duration(milliseconds: 300),
          items: [
            Icon(Icons.home),
            Icon(Icons.settings),
            Icon(Icons.person),
          ]
      ),
    );
  }
}
