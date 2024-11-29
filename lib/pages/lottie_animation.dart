import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyLotieAnimation extends StatefulWidget {
  const MyLotieAnimation({super.key});

  @override
  State<MyLotieAnimation> createState() => _MyLotieAnimationState();
}

class _MyLotieAnimationState extends State<MyLotieAnimation> with SingleTickerProviderStateMixin{

  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        duration: Duration(seconds: 5),
        vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _controller.reset();
              _controller.forward();
            });
          },
          child: Lottie.network(
              "https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json",
            controller: _controller
          ),
      ),
      ),
    );
  }
}
