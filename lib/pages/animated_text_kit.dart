import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyAnimatedTextKit extends StatefulWidget {
  const MyAnimatedTextKit({super.key});

  @override
  State<MyAnimatedTextKit> createState() => _MyAnimatedTextKitState();
}

class _MyAnimatedTextKitState extends State<MyAnimatedTextKit> {

  int _index = 0;

  final List<Widget> _animatedTexts = [
    SizedBox(
      width: 300,
      child: AnimatedTextKit(
        
          animatedTexts: [
            ColorizeAnimatedText(
                "Hey there! Dear Flutter developers",
                textStyle: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                colors: [
                  Colors.blue,
                  Colors.purple,
                  Colors.yellow,
                  Colors.black,
                  Colors.red,
                  Colors.green
                ],
              speed: Duration(milliseconds: 500),
            ),
          ],
        isRepeatingAnimation: true,
      ),
    ),

    SizedBox(
      width: 300,
      child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 20,
          ),
          child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                    "Let's build an app with Flutter",
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent
                  ),
                  speed: Duration(milliseconds: 150)
                ),
              ],
          )
      ),
    )

  ];

  void _nextAnimation(){
    setState(() {
      _index = (_index + 1) % _animatedTexts.length;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A N I M A T E D   T E X T"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _animatedTexts[_index]
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: _nextAnimation,
        tooltip: "Next Animation",
        child: Icon(Icons.play_arrow,
        size: 35,
        ),
      ),
    );
  }
}
