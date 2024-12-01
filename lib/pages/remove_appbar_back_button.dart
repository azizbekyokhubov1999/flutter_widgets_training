import 'package:flutter/material.dart';
import 'package:flutter_widgets_training/pages/re_second_page.dart';

class RemoveAppbarBackButton extends StatelessWidget {
  const RemoveAppbarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
         style:  ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
           minimumSize: Size(150, 50)
          ),
            onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => ReSecondPage()));
            //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ReSecondPage()));
            },
            child: Text("Second Page",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),
            )
        ),
      ),
    );
  }
}
