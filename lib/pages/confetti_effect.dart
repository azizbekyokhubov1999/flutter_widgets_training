import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class MyConfettiEffect extends StatefulWidget {
  const MyConfettiEffect({super.key});

  @override
  State<MyConfettiEffect> createState() => _MyConfettiEffectState();
}

class _MyConfettiEffectState extends State<MyConfettiEffect> {

  late ConfettiController confettiController;

  @override
  void initState() {
    confettiController = ConfettiController(duration: Duration(seconds: 10));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    confettiController.dispose();
  }

  void celebrate(){
    confettiController.play();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Confetti effect",
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              "Congrats 100 days in flutter",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 500),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                  onPressed: celebrate,
                  child: Text(
                      "Celebrate!!!",
                    style: TextStyle(
                        fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  )
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
                confettiController: confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              emissionFrequency: 0.05,
              numberOfParticles: 500,
              maxBlastForce: 10,
              minBlastForce: 5,
              gravity: 0.3,
              colors: [
                Colors.red,
                Colors.blue,
                Colors.green,
                Colors.yellow,
                Colors.purple,
                Colors.orange
              ],
            ),
          )
        ],
      ),
    );
  }
}
