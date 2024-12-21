import 'package:flutter/material.dart';

class MyGiffy extends StatelessWidget {
  const MyGiffy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("G I F F Y"),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
        elevation: 0,
      ),
      body: Center(
        child: Image.network(
            "https://media4.giphy.com/media/gXqShgjI4Loidu3Cd1/200w.webp",
          scale: 0.5,
        ),
      ),
    );
  }
}
