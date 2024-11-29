import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MySllidableWidget extends StatefulWidget {
  const MySllidableWidget({super.key});

  @override
  State<MySllidableWidget> createState() => _MySllidableWidgetState();
}

class _MySllidableWidgetState extends State<MySllidableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
              motion: StretchMotion(),
              children: [
                SlidableAction(
                    onPressed: (context){},
                  icon: Icons.phone,
                  backgroundColor: Colors.green,
                )
              ]
          ),

          endActionPane: ActionPane(
              motion: StretchMotion(),
              children: [
                SlidableAction(
                    onPressed: (context){},
                  icon: Icons.favorite,
                  backgroundColor: Colors.red,
                ),
                SlidableAction(
                    onPressed: (context){},
                  icon: Icons.sms_outlined,
                  backgroundColor: Colors.blue,
                )
              ]
          ),
          child: Container(
            color: Colors.purple[200],
            child: ListTile(
              title: Text("Conor",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              subtitle: Text("990123454",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              ),
              leading: Icon(
                  Icons.person,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
