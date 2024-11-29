import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({super.key});

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 70,
              width: 150,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                      Colors.deepPurple[500]
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  )

                ),
                  onPressed: (){},
                  child: Text("Ready",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue
                    ),
                  ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 100,
            width: 100,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
                backgroundColor: Colors.green,
                onPressed: () {},
              child: Icon(
                Icons.favorite,
                size: 70,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.redAccent)
            ),
              onPressed: (){},
              child: Text(
                "button",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                
              )
          )
        ],
      )
    );
  }
}
