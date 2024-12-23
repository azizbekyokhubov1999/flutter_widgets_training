
import 'dart:math';

import 'package:flutter/material.dart';

class MyColorChanger extends StatefulWidget {
  const MyColorChanger({super.key});

  @override
  State<MyColorChanger> createState() => _MyColorChangerState();
}

class _MyColorChangerState extends State<MyColorChanger> {

  Color backgroundColor = Colors.white;
  
  void changeColor(){
    setState(() {
      backgroundColor = Color(Random().nextInt(0xffffffff));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("S T A C K"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: GestureDetector(
        onTap: changeColor,
        child: Container(
          color: backgroundColor,
          child: Center(
            child: Text("Click to change color!!!",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            ),
          ),
        ),
      ),
    );
  }
}
