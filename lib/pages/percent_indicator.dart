import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyPercentIndicator extends StatefulWidget {
  const MyPercentIndicator({super.key});

  @override
  State<MyPercentIndicator> createState() => _MyPercentIndicatorState();
}

class _MyPercentIndicatorState extends State<MyPercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
                radius: 150,
              percent: 0.5,
              lineWidth: 25,
              progressColor: Colors.green,
              backgroundColor: Colors.green.shade100,
              animation: true,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text("50%",
              style: TextStyle(fontSize: 40),
              ),
            ),
            LinearPercentIndicator(
              lineHeight: 25,
              percent: 0.6,
              backgroundColor: Colors.green.shade100,
              progressColor: Colors.green,
              animation: true,
              barRadius: Radius.circular(20),
            )
          ],
        )
      ),
    );
  }
}
