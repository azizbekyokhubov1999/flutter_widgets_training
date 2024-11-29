import 'package:flutter/material.dart';

class SPage3 extends StatelessWidget {
  const SPage3({super.key});

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
