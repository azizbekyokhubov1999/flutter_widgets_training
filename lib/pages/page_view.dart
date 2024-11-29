import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.green,
            child: Center(
              child: Icon(Icons.home,
              size: 300,
              )
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Icon(Icons.music_note,
              size: 300,
              )
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Icon(Icons.person,
                size: 300,
              )
            ),
          ),
        ],
      ),
    );
  }
}

