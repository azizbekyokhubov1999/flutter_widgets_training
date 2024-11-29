import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
            text: TextSpan(
              text: "Hello",
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              children: [
                WidgetSpan(child: SizedBox(width: 15)),
                TextSpan(
                  text: "Flutter",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 28,
                    fontWeight: FontWeight.w500
                  ),
                ),
                WidgetSpan(child: SizedBox(width: 15)),
                TextSpan(
                  text: "Developer",
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                  )
                )
              ]
            )
        ),
      ),
    );
  }
}
