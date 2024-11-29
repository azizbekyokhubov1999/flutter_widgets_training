import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyGaugeChart extends StatelessWidget {
  const MyGaugeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          child: SfRadialGauge(
            axes: [
              RadialAxis(
                maximum: 50,
                interval: 2,
                labelsPosition: ElementsPosition.outside,
                ranges: [
                  GaugeRange(
                      startValue: 0,
                      endValue: 20,
                    color: Colors.green,
                  ),
                  GaugeRange(
                      startValue: 20.1,
                      endValue: 40,
                    color: Colors.yellow,
                  ),
                  GaugeRange(
                    startValue: 40.1,
                    endValue: 50,
                    color: Colors.red,
                  ),
                ],
                pointers: [
                NeedlePointer(
                  value: 30.5,
                  needleEndWidth: 5,
                  enableAnimation: true,
                ),
                ],
                annotations: [
                  GaugeAnnotation(
                    angle: 90,
                    positionFactor: 0.7,
                      widget: Text("30.5",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
