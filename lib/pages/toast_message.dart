import 'package:flutter/material.dart';
 // import 'package:fluttertoast/fluttertoast.dart';

class MyToastMessage extends StatelessWidget {
  const MyToastMessage({super.key});

  // function for showing toast message
  void showToastMessage(BuildContext context){
    // Fluttertoast.showToast(
    //     msg: "Hello my friend",
    //   toastLength: Toast.LENGTH_SHORT,
    //   gravity: ToastGravity.TOP,
    //   timeInSecForIosWeb: 2,
    //   backgroundColor: Colors.purple[300],
    //   fontSize: 20,
    //   textColor: Colors.white,
    //   webPosition: 'center',
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Toast Message"),
        centerTitle:  true,
      ),
      body: Container(
        color: Colors.teal[100],
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[300],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45)
            ),
              onPressed: () => showToastMessage(context),
              child: Text("Flutter toast",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black
                ),
              )
          ),
        ),
      ),


    );
  }
}
