import 'package:flutter/material.dart';

class MySwitchButton extends StatefulWidget {
  const MySwitchButton({super.key});

  @override
  State<MySwitchButton> createState() => _MySwitchButtonState();
}

class _MySwitchButtonState extends State<MySwitchButton> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Switch is ${isSwitched ? "ON" : "OFF"}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          Center(
            child: Switch(
                value: isSwitched,
                onChanged: (value){
                  setState(() {
                  isSwitched = value;
                  });
                },
              activeColor: Colors.green,
              inactiveThumbColor: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
