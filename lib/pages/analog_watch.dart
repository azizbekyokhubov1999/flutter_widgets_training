import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

class MyAnalogWatch extends StatelessWidget {
  const MyAnalogWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[300],
      appBar: AppBar(
        title: Text("A N A L O G   W A T CH"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: AnalogClock(
          dateTime: DateTime.now(),
          dialColor: Colors.white,
          hourHandColor: Colors.black,
          minuteHandColor: Colors.black,
          secondHandColor: Colors.red,
          hourNumberColor: Colors.black,
          dialBorderColor: Colors.black,
          centerPointColor: Colors.black,
          dialBorderWidthFactor: 0.09,
          isKeepTime: true,
        ),
      ),
    );
  }
}
