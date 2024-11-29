import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MyLiquidSwipe extends StatelessWidget {
  const MyLiquidSwipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            enableSideReveal: true,
              slideIconWidget: Icon(Icons.arrow_back_ios_rounded),
              pages: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("assets/images/nature1.jpg"),
                      fit: BoxFit.cover
                    ),
                  ),
                  child: Center(
                    child: Text("Page 1"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                        image: AssetImage("assets/images/nature2.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Center(
                    child: Text("Page 2"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: AssetImage("assets/images/nature3.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Center(
                    child: Text("Page 3"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage("assets/images/nature4.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Center(
                    child: Text("Page 4"),
                  ),
                ),
              ]
          ),
        ],
      ),
    );
  }
}
