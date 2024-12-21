import 'package:flutter/material.dart';

class MyVisibilityWidget extends StatefulWidget {
  const MyVisibilityWidget({super.key});

  @override
  State<MyVisibilityWidget> createState() => _MyVisibilityWidgetState();
}

class _MyVisibilityWidgetState extends State<MyVisibilityWidget> {

  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("V I S I B I L I T Y"),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo.shade100
              ),
                onPressed: (){
                setState(() {
                  _isVisible = !_isVisible;
                });
                },
                child: Text("Press it",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),
                ),
            ),
            SizedBox(height: 30),
            Visibility(
              visible: _isVisible,
              child: Text("Welcome code example",
              style: TextStyle(
                fontSize: 25,
                color: Colors.brown,
                fontWeight: FontWeight.bold
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
