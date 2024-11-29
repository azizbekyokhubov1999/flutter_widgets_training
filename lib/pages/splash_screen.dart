import 'package:flutter/material.dart';

import 'my_home.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  void navigateToHome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHome()));
  }
  @override
  void initState() {
    super.initState();
    navigateToHome(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                "assets/images/logopng.png",
              height: 500,
              width: 400,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Colors.red
              ),
            )
          ],
        ),
      ),
    );
  }
}
