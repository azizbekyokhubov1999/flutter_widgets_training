import 'package:flutter/material.dart';
class ImageSize extends StatelessWidget {
  const ImageSize({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 150,
                child: ClipOval(
                  child: Image.asset("assets/images/cr7.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                    "assets/images/lm10.jpg"
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/images/njr10.jpg",
                fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
