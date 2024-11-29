import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({super.key});

  @override
  State<MyDropDownButton> createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  String dropDownValue = "Apple";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          // isExpanded: true,
          icon: Icon(Icons.arrow_drop_down,
          size: 30,
            color: Colors.green,
          ),
          dropdownColor: Colors.orange,
          borderRadius: BorderRadius.circular(15),
          value: dropDownValue,
            items: [
              DropdownMenuItem(
                value: "Apple",
                  child: Text("Apple"),
              ),
              DropdownMenuItem(
                value: "Nokia",
                  child: Text("Nokia"),
              ),
              DropdownMenuItem(
                value: "HTC",
                child: Text("HTC"),
              ),
              DropdownMenuItem(
                value: "Honor",
                child: Text("Honor"),
              ),
            ],
            onChanged: (String? newValue){
              setState(() {
                dropDownValue = newValue!;
              });
            }

        ),
      ),
    );
  }
}
