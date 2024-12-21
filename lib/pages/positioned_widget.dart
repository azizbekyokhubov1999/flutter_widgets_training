import 'package:flutter/material.dart';

class MyPositioned extends StatelessWidget {
  const MyPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("P O S I T I O N E D"),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade500,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.indigo.shade200,
          ),
          Positioned(
            top: 20,
              right: 20,
              child: Icon(
                  Icons.favorite,
                size: 40,
                color: Colors.red,
              )
          )
        ],
      ),
    );
  }
}
