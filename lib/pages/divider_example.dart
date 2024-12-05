import 'package:flutter/material.dart';

class MyDividerExample extends StatelessWidget {
  const MyDividerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 110,
              width: 110,
              color: Colors.red[400],
            ),
            Divider(
              color: Colors.blueAccent,
              height: 15,
              thickness: 4,
            ),
            Container(
              height: 130,
              width: 130,
              color: Colors.yellow[400],
            ),
            Divider(
              color: Colors.blueAccent,
              height: 15,
              thickness: 4,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.green[400],
            )
          ],
        ),
      ),
    );
  }
}

