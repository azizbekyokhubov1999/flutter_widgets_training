import 'package:flutter/material.dart';

class SPage1 extends StatelessWidget {
  const SPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.red[400],
          ),
        ),
      ),
    );
  }
}
