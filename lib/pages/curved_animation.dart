import 'package:flutter/material.dart';

class MyCurvedAnimation extends StatefulWidget {
  const MyCurvedAnimation({super.key});

  @override
  State<MyCurvedAnimation> createState() => _MyCurvedAnimationState();
}

class _MyCurvedAnimationState extends State<MyCurvedAnimation> with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> _curvedAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 3),
        vsync: this,
    );

    _curvedAnimation = CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut,
      reverseCurve: Curves.elasticInOut
    );

    _controller.repeat(reverse: true);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        title: Text("C U R V E D   A N I M A T I O N"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: _curvedAnimation,
            builder: (context, child){
              return Transform.scale(
                scale: _curvedAnimation.value * (1.2 + 0.8),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 30
                      )
                    ]
                  ),
                  child: Image.asset("assets/images/lm10.jpg",
                  fit: BoxFit.cover,
                    width: 250,
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
