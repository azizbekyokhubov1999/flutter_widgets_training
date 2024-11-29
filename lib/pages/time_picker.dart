import 'package:flutter/material.dart';

class MyTime extends StatefulWidget {
  const MyTime({super.key});

  @override
  State<MyTime> createState() => _MyTimeState();
}

class _MyTimeState extends State<MyTime> {

  late TimeOfDay time;
  _selectTime() async {
    TimeOfDay? picker = await showTimePicker(context: context, initialTime: time);

    if(picker != null){
      setState(() {
        time = picker;
      });
    }
  }

  @override
  void initState() {
    time = TimeOfDay.now();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Time Picker..."),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: _selectTime,
                child: Text("Show Time",
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
                )
            ),
          )
        ],
      ),
    );
  }
}
