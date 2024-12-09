import 'package:flutter/material.dart';

class MyTransformWidget extends StatefulWidget {
  const MyTransformWidget({super.key});

  @override
  State<MyTransformWidget> createState() => _MyTransformWidgetState();
}

class _MyTransformWidgetState extends State<MyTransformWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("T R A N S F O R M"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.indigo.shade100),
        child: Center(
          child: Transform(
              transform: Matrix4.identity()
                  ..rotateZ(0.8)
                  ..scale(1.09, 1.2)
                  ..translate(20.0, 20.0),
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/images/lm10.jpg",
              width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
