import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {

  final random = Random();
  double boxHeight = 100;
  double boxWidth = 100;
  Color boxColor = Colors.deepPurple;
  BorderRadius _boxRadius = BorderRadius.circular(50);

  void _changeBoxSize(){
    setState(() {
      boxHeight = random.nextInt(400).toDouble();
      boxWidth = random.nextInt(400).toDouble();
    });
  }

  void _changeColor(){
    setState(() {
      boxColor = Color.fromRGBO(random.nextInt(300), random.nextInt(300), random.nextInt(300), 1);
    });
  }
  
  void _changeRadius(){
    setState(() {
      _boxRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
            duration: Duration(seconds: 1),
          curve: Curves.fastEaseInToSlowEaseOut,
          width: boxWidth,
          height: boxHeight,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: _boxRadius
          ),
        ),
      ),

      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: _changeColor,
              icon: Icon(Icons.pallet)
          ),
          IconButton(
              onPressed: _changeBoxSize,
              icon: Icon(Icons.aspect_ratio)
          ),
          IconButton(
              onPressed: _changeRadius,
              icon: Icon(Icons.interests)
          ),
        ],
      ),
    );
  }
}
