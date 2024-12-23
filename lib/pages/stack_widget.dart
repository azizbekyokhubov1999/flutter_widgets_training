import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S T A C K"),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 350,
              width: 350,
              color: Colors.red,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.white,
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
            ),
            Container(
              child: Icon(Icons.favorite,
              size: 100,
                color: Colors.red,
              ),
              height: 150,
              width: 150,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
