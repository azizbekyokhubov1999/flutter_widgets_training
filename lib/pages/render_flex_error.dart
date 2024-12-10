import 'package:flutter/material.dart';

class MyRenderFlex extends StatelessWidget {

  const MyRenderFlex({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
