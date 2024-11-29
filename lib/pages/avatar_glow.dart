import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class MyAvatarGlow extends StatefulWidget {
  const MyAvatarGlow({super.key});

  @override
  State<MyAvatarGlow> createState() => _MyAvatarGlowState();
}

class _MyAvatarGlowState extends State<MyAvatarGlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: AvatarGlow(
          glowColor: Colors.pink,
            glowShape: BoxShape.rectangle,
            glowRadiusFactor: 2,
            duration: Duration(seconds: 3),
            child: Icon(Icons.favorite,
            size: 70,
              color: Colors.red,
            ),
        ),
      ),
    );
  }
}
