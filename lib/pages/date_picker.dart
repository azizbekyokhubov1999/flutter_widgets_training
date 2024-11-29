import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {

  DateTime date = DateTime.now();

  void _selectDate() async {
    DateTime? datePicker = await showDatePicker(
        context: context,
      initialDate: date,
        firstDate: DateTime(1990),
        lastDate: DateTime(2025),
    );

    if(datePicker != null && datePicker != date) {
      setState(() {
        date = datePicker;
      });
    }
  }

  @override
  void initState() {
    date = DateTime.now();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _selectDate,
                child: Text(
                  "Show Date",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                )
            ),
            Text(date.toString())
          ],
        ),
      ),
    );
  }
}
