import 'package:flutter/material.dart';

class MyCheckBoxListTile extends StatefulWidget {
  const MyCheckBoxListTile({super.key});

  @override
  State<MyCheckBoxListTile> createState() => _MyCheckBoxListTileState();
}

class _MyCheckBoxListTileState extends State<MyCheckBoxListTile> {

  bool sun = false;
  bool mon = false;
  bool tue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("CheckBoxListTile",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
              value: sun,
              onChanged: (val){
                setState(() {
                  sun = val!;
                });
              },
            title: Text("Sunday",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
            subtitle: Text("Day 1",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45
              ),
            ),
          ),
          CheckboxListTile(
              value: mon,
              onChanged: (val){
                setState(() {
                  mon = val!;
                });
              },
            title: Text("Monday",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
            subtitle: Text("Day 2",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45
              ),
            ),
          ),
          CheckboxListTile(
              value: tue,
              onChanged: (val){
                setState(() {
                  tue = val!;
                });
              },
            title: Text("Tuesday",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
            subtitle: Text("Day 3",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45
              ),
            ),
          ),


        ],
      ),
    );
  }
}

