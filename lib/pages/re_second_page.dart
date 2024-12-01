import 'package:flutter/material.dart';

class ReSecondPage extends StatelessWidget {
  const ReSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(150, 50),
            backgroundColor: Colors.red[300],
          ),
            onPressed: (){
            Navigator.pop(context);
            },
            child: Text("Go Back",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
            )
        ),
      ),
    );
  }
}
