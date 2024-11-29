import 'package:flutter/material.dart';

class MyToolTip extends StatelessWidget {
  const MyToolTip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[100],
        title: Text(
          "Tool Tip",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Tooltip(
                message: "Pause",
                child: Icon(Icons.pause,
                size: 50,
                  color: Colors.red,
                ),
              ),
              Tooltip(
                message: "Restart",
                child: Icon(Icons.restart_alt_rounded,
                  size: 50,
                  color: Colors.green,
                ),
              ),
              Tooltip(
                message: "Stop",
                child: Icon(Icons.stop,
                  size: 50,
                  color: Colors.amber,
                ),
              ),
              Tooltip(
                message: "Info",
                child: Icon(Icons.info,
                  size: 50,
                  color: Colors.blue,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
