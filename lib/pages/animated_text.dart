import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MyAnimatedText extends StatefulWidget {
  const MyAnimatedText({super.key});

  @override
  State<MyAnimatedText> createState() => _MyAnimatedTextState();
}

class _MyAnimatedTextState extends State<MyAnimatedText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/hotel.jpg"),
                  fit: BoxFit.cover
                )
            ),
          ),

          //for animated text

          Center(
            child: Positioned(
              bottom: 20,
              left: 20,
              right: 10,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.red[300]
                ),
                child: Marquee(
                  blankSpace: 80,
                    velocity: -100,
                    text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}
