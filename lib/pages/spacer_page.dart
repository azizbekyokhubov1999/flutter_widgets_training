import 'package:flutter/material.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S P A C E R"),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade300,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 25),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.indigo.shade200,
                 child: Icon(
                   Icons.thumb_up,
                   color: Colors.black,
                   size: 30,
                 ),
              ),
            ),
            Spacer(flex: 2),
            Text(
              "Welcome to code example",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo
              ),
            ),
            Spacer(flex: 2),
            ElevatedButton(
               style:  ElevatedButton.styleFrom(
                 backgroundColor: Colors.indigo.shade100
               ),
                onPressed: (){},
                child: Text("Subscribed",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo
                ),
                )
            ),
            Spacer(flex: 2)

          ],
        ),
      ),
    );
  }
}
