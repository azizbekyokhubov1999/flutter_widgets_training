import 'package:flutter/material.dart';

class MyHeroDetail extends StatelessWidget {
  const MyHeroDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("D E T A I L S"),
        centerTitle: true,
      ),
      body: Hero(
          tag: "Flutter",
          child: Image.asset(
              "assets/images/tshirt.png",
          )
      ),
    );
  }
}
