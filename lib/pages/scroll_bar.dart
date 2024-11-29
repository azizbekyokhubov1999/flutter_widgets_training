import 'package:flutter/material.dart';

class MyScrollBar extends StatelessWidget {
  const MyScrollBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: Scrollbar(
          thickness: 20,
        thumbVisibility: true,
          trackVisibility: true,
          radius: Radius.circular(20),
          child: ListView.builder(
            itemCount: 30,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  title: Text("Item ${index+1}"),
                );
              }
          )
      ),
    );
  }
}
