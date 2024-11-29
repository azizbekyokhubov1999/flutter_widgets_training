import 'package:flutter/material.dart';

class MyChoiceChip extends StatefulWidget {
  const MyChoiceChip({super.key});

  @override
  State<MyChoiceChip> createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<MyChoiceChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChoiceChip(
            label: Text("Entertainment",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
            selectedColor: Colors.red,
            avatar: Icon(Icons.favorite),
            selected: _isSelected,
          onSelected: (value){
              setState(() {
                _isSelected = value;
              });
          },
        ),
      ),
    );
  }
}
