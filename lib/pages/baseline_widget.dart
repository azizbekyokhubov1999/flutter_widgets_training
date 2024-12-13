import 'package:flutter/material.dart';

class MyBaseLineWidget extends StatelessWidget {
  const MyBaseLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: Text("B A S E L I N E"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Baseline(
                  baseline: 10,
                  baselineType: TextBaseline.alphabetic,
                child: Text("Code",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
                ),
              ),
              SizedBox(width: 10),
              Baseline(
                  baseline: 100,
                  baselineType: TextBaseline.alphabetic,
                child: Text("example",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple
                ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Baseline(
                  baseline: 130,
                  baselineType: TextBaseline.alphabetic,
                child:  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[300]
                  ),
                    onPressed: (){},
                    child: Text("Enjoy",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    )
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
