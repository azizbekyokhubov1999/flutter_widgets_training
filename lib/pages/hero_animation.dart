import 'package:flutter/material.dart';
import 'hero_detail.dart';

class MyHeroAnimation extends StatelessWidget {
  const MyHeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("H E R O"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHeroDetail()));
          },
          child: Hero(
              tag: "Flutter",
              child: Image.asset("assets/images/tshirt.png",
              height: 200,
                width: 150,
              )
          ),
        ),
      ),
    );
  }
}
