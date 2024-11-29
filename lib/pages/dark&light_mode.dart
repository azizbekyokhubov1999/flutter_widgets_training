import 'package:flutter/material.dart';

class MyDarkLightMode extends StatefulWidget {
  const MyDarkLightMode({super.key});

  @override
  State<MyDarkLightMode> createState() => _MyDarkLightModeState();
}

class _MyDarkLightModeState extends State<MyDarkLightMode> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isSwitched ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
           backgroundColor: isSwitched ? Colors.deepPurple : Colors.deepPurple[300],
          centerTitle: true,
          title: Text("Switcher",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                color: isSwitched ? Colors.white : Colors.green,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding:  EdgeInsets.only(right: 200),
              child: Text("Container",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
              ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Container class in flutter is a convenience widget that combines common painting, positioning, and sizing of widgets. A Container class can be used to store one or more widgets and position them on the screen according to our convenience.",
              style: TextStyle(
                fontSize: 17,
              ),
              ),
            ),
            SizedBox(height: 15),
            Switch(
                value: isSwitched,
                onChanged: (value){
                  setState(() {
                    isSwitched = value;
                  });
                }
            )
          ],
        ),
      ),
    );
  }
}
