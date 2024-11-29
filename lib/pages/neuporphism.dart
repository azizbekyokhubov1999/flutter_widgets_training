import 'package:flutter/material.dart';

class MyNeumorphism extends StatelessWidget {
  const MyNeumorphism({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(4, 4),
                blurRadius: 13,
                spreadRadius: 1
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 13,
                spreadRadius: 1
              )
            ]
          ),
          child: Icon(Icons.home,
          size: 40,
            color: Colors.green[400],

          ),
        ),
      ),
    );
  }
}
