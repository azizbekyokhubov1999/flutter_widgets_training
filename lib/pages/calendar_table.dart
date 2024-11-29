import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendarTable extends StatefulWidget {
  const MyCalendarTable({super.key});

  @override
  State<MyCalendarTable> createState() => _MyCalendarTableState();
}

class _MyCalendarTableState extends State<MyCalendarTable> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar Table",
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text("Selected Day = ${today.toLocal().toString().split(' ')[0]}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.green
          ),
          ),
          SizedBox(height: 40),
          TableCalendar(
            rowHeight: 70,
              availableGestures: AvailableGestures.all,
              onDaySelected: _onDaySelected,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2015, 01, 01),
              lastDay: DateTime.utc(2028, 12, 31)
          )
        ],
      ),
    );
  }
}
