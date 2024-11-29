import 'package:flutter/material.dart';
import 'package:flutter_widgets_training/pages/page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
        },
        child: Center(
          child: Container(
            height: 80,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text(
                "Click it",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
