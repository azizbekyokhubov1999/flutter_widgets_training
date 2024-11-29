import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyChart extends StatelessWidget {
  const MyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("PIE CHART",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(


          children: [
            Center(
              child: Text("Revenue",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            PieChart(
              swapAnimationDuration: Duration(milliseconds: 300),
              PieChartData(
                sections: [
                  PieChartSectionData(
                    value: 50,
                    color: Colors.red,
                    title: "C#",
                      titleStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                  ),
                  PieChartSectionData(
                      value: 40,
                      color: Colors.yellow,
                    title: "Frontend",
                      titleStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )
                  ),
                  PieChartSectionData(
                      value: 30,
                      color: Colors.blue,
                    title: "Flutter",
                    titleStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )
                  ),
                  PieChartSectionData(
                      value: 20,
                      color: Colors.green,
                    title: "Backend",
                      titleStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )
                  ),
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}
