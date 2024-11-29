import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SnackBar example",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.deepPurple,
                    action: SnackBarAction(
                        label: "Undo",
                        textColor: Colors.white,
                        onPressed: () {

                        }
                    ),
                    content: Row(
                      children: [
                        Icon(Icons.wifi_off_outlined,
                        size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(width: 30),
                        Text("Connection error",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        )
                      ],
                    ) 
                )
              );
            },
            child: Text(
              "Connect Wi-Fi"
            )
        ),
      ),
    );
  }
}
