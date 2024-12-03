import 'package:flutter/material.dart';

class MyGradientColors extends StatelessWidget {
  const MyGradientColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("G R A D I E N T   C O L O R S"),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(

            //for gradient 1
            // gradient: SweepGradient(
            //   startAngle: 2,
            //   endAngle: 6,
            //   colors: [
            //     Colors.red,
            //     Colors.green,
            //     Colors.yellow,
            //     Colors.purple,
            //   ]
            // ),

            //for gradient 2
            // gradient: LinearGradient(
            //     colors: [
            //           Colors.red,
            //           Colors.green,
            //           Colors.yellow,
            //           Colors.purple,
            //     ]
            // )

            // for gradient 3
            gradient: RadialGradient(
              radius: 1,
                colors: [
                  Colors.red,
                  Colors.green,
                  Colors.yellow,
                  Colors.purple,
                ]
            )
          ),
        ),
      ),
    );
  }
}
