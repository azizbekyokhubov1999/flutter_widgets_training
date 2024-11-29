import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[300]
          ),
            onPressed: (){
              showDialog(
                  context: context,
                  builder: (context) =>
                      Dialog(
                        child: Padding(
                          padding:  EdgeInsets.all(25),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Flutter",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "This is show dialog message",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(height: 20),
                              TextButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  child: Text("Cancel",

                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                  ),
                                  )
                              )

                            ],
                          ),
                        ),
                      )
              );
            }, 
            child: Text("Show Dialog",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            )
        ),
      )
    );
  }
}
