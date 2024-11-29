import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({super.key});

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: AnotherCarousel(
                  images: [
                    AssetImage("assets/images/cr7.jpg"),
                    AssetImage("assets/images/lm10.jpg"),
                    AssetImage("assets/images/njr10.jpg"),
                  ],
                autoplay: false,
                dotSize: 10,
                dotColor: Colors.green,
                indicatorBgPadding: 10,

              ),
            )
          ],
        ),
      ),
    );
  }
}
