import 'package:flutter/material.dart';

class MyRotatedWidget extends StatelessWidget {
  const MyRotatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotatedBox(
            quarterTurns: 4,
          child:
          //Text("Flutter Rotated Box",
          // style: TextStyle(
          //   fontSize: 25,
          //   fontWeight: FontWeight.w500,
          //   color: Colors.purple
          // ),
          // ),

          // Icon(Icons.apple_outlined,
          // size: 200,
          //   color: Colors.black,
          // )

          Padding(
            padding: const EdgeInsets.all(60),
            child: Image.asset("assets/images/nature1.jpg",
            ),
          )

        ),
      ),
    );
  }
}
