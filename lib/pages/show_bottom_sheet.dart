import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text("Bottom Sheet"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              _showBottomSheet(context);
            },
            child: Text("Show bottom sheet",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.black
            ),
            ),
        ),
      ),
    );
  }
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  blurRadius: 10,
                )
              ]
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //for home
                ListTile(
                  leading: Icon(Icons.home,
                  color: Colors.blueAccent,
                  ),
                  title: Text("Home",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Divider(),
                // for settings
                ListTile(
                  leading: Icon(Icons.settings,
                  color: Colors.green,
                  ),
                  title: Text("Settings",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Divider(),
                // for share
                ListTile(
                  leading: Icon(Icons.share,
                  color: Colors.purple,
                  ),
                  title: Text("Share",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),

                SizedBox(
                  height: 10
                ),

                //for close btn
                ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                    child: Text("Close",
                    style: TextStyle(
                      fontSize: 16
                    ),
                    )
                )
              ],
            ),
          );
        }
    );
  }
}


