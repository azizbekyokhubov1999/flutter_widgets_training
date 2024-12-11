import 'package:flutter/material.dart';

class MyConstrainedBox extends StatelessWidget {
  const MyConstrainedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: Text("C O N S T R A I N E D   B O X"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.teal.shade100,
                Colors.green.shade100
              ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Center(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 200,
                minHeight: 150,
                maxHeight: 250,
                maxWidth: 350,
              ),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    offset: Offset(5, 5),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                      Icons.widgets,
                    color: Colors.deepPurple,
                    size: 50,
                  ),
                  SizedBox(
                    height: 15
                  ),
                  Text("Welcome to codding practise",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
