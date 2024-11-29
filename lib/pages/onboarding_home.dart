import 'package:flutter/material.dart';

class OnboardingHomePage extends StatelessWidget {
  const OnboardingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: Center(
        child: Text("This is our home page",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.green
        ),
        ),
      ),
    );
  }
}
