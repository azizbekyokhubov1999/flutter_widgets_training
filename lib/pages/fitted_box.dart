import 'package:flutter/material.dart';

class MyFittedBox extends StatelessWidget {
  const MyFittedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text("Fitted Box"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: FittedBox(
                child: 
                Icon(Icons.favorite)
                //Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
            ),
          ),
        ),
      ),
    );
  }
}
