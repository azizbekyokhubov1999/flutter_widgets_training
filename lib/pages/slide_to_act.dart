import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class MySlideToAct extends StatelessWidget {
  const MySlideToAct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideAction(
          innerColor: Colors.red,
          outerColor: Colors.red[200],
          borderRadius: 30,
          sliderButtonIcon: Icon(
            Icons.lock_open,
            size: 30,
            color: Colors.white,
          ),
          text: "Slide to Unlock",
          textColor: Colors.black,
          textStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),
          onSubmit: (){

          },
        ),
      ),
    );
  }
}
