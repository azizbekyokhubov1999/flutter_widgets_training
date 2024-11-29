import 'package:flutter/material.dart';

class MyVolumeSlider extends StatefulWidget {
  const MyVolumeSlider({super.key});

  @override
  State<MyVolumeSlider> createState() => _MyVolumeSliderState();
}

class _MyVolumeSliderState extends State<MyVolumeSlider> {
  double _sliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("S L I D E R"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Value: ${_sliderValue.toStringAsFixed(1)}",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
            Slider(
              activeColor: Colors.green,
              min: 0.0,
                max: 100,
                divisions: 10,
                label: _sliderValue.round().toString(),
                value: _sliderValue,
                onChanged: (double newValue){
                  setState(() {
                    _sliderValue = newValue;
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
