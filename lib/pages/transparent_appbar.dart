import 'package:flutter/material.dart';

class MyTransparentAppBar extends StatelessWidget {
  const MyTransparentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Transparent App bar"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        // backgroundColor: Colors.green[300],
        leading: BackButton(),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: Image.asset("assets/images/nature3.jpg",
      height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
