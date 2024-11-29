import 'package:flutter/material.dart';

class MyRadioBtnPage extends StatefulWidget {
  const MyRadioBtnPage({super.key});

  @override
  State<MyRadioBtnPage> createState() => _MyRadioBtnPageState();
}

class _MyRadioBtnPageState extends State<MyRadioBtnPage> {

  String gValue = "Yes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text("Radio"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text("Can Real Madrid won champions league?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Radio(
                    value: "Yes",
                    groupValue: gValue,
                    onChanged: (value){
                      setState(() {
                        gValue = value!;
                      });
                    }
                ),
                SizedBox(width: 5),
                Text("Yes",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                SizedBox(width: 50),
                Radio(
                    value: "No",
                    groupValue: gValue,
                    onChanged: (value){
                      setState(() {
                        gValue = value!;
                      });
                    }
                ),
                SizedBox(width: 5),
                Text("No",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: (){},
                child: Text("Submit",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
